<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Login extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('setting_model');
        $this->load->library('customlib');
        $this->load->library('tenant_lib');
    }

     public function login()
{
    $this->output->set_content_type('application/json');

    // Multi-School: resolve the tenant from school_id/school_code (POST/GET/header)
    // and set the tenant context BEFORE authenticating. Backward compatible:
    // with no school supplied, currentSchoolId() falls back to school #1.
    $school    = $this->tenant_lib->resolveFromRequest();
    $school_id = $school ? (int) $school->id : $this->tenant_lib->currentSchoolId();

    $username = $this->input->post('username', TRUE);
    $password = $this->input->post('password', TRUE);

    // Validation
    if (empty($username) || empty($password)) {
        return $this->output
            ->set_status_header(401)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'Username and password are required'
            ]));
    }

    $this->db->where('username', $username)->where('password', $password);
    if (!empty($school_id) && $school_id !== Tenant_lib::ALL) {
        $this->db->where('school_id', $school_id); // Multi-School: scope login to this tenant
    }
    $student = $this->db->get('users')->row();

    if (!$student) {
        return $this->output
            ->set_status_header(401)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'Invalid user'
            ]));
    }
    
    if ($student->is_active != 'yes') {
        return $this->output
            ->set_status_header(401)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'Not active'
            ]));
    }

    // Success
    unset($student->password); // 🔥 important

    return $this->output
        ->set_status_header(200)
        ->set_output(json_encode([
            'status'   => true,
            'userinfo' => $student,
            'message'  => 'Login successful'
        ]));
}


    public function changepassword()
{
    $user_id      = $this->input->post('user_id',TRUE);
    $old_password = $this->input->post('old_password',TRUE);
    $new_password = $this->input->post('new_password',TRUE);
    $confirm_pwd  = $this->input->post('confirm_password',TRUE);

    // 1️⃣ Validate input
    if (empty($old_password) || empty($new_password) || empty($confirm_pwd)) {
        return $this->output
            ->set_status_header(401)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'All Field Required'
            ]));
    }

    if ($new_password !== $confirm_pwd) {

    return $this->output
            ->set_status_header(401)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'New password and confirm password do not match'
            ]));
       
    }

    // 2️⃣ Check old password
    $user = $this->db
        ->where('id', $user_id)
        ->where('password', $old_password)
        ->get('users')
        ->row();

    if (!$user) {
        return $this->output
            ->set_status_header(401)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'Old password is incorrect'
            ]));
       
        
    }

    // 3️⃣ Update new password (PLAIN)
    $this->db
        ->where('id', $user_id)
        ->update('users', [
            'password'   => $new_password,
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        return $this->output
            ->set_status_header(200)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'Password changed successfully'
            ]));
    
}


    public function getStudentSessionClasses(){
        
    }

   public function checkPhonenumber()
{
    if ($this->input->server('REQUEST_METHOD') !== 'POST') {
        return $this->output
            ->set_content_type('application/json')
            ->set_status_header(405)
            ->set_output(json_encode([
                'status' => false,
                'message' => 'Method Not Allowed'
            ]));
    }

    $phone = $this->input->post('phone', TRUE);

    if (empty($phone)) {
        return $this->output->set_output(json_encode([
            'status' => false,
            'message' => 'Phone number is required'
        ]));
    }

    $student = $this->db
        ->where('mobileno', $phone)
        ->get('students')
        ->row();

    if (!$student) {
        return $this->output->set_output(json_encode([
            'status' => false,
            'message' => 'Phone number not registered'
        ]));
    }

    // 🔐 Check if OTP already sent and still valid
    if (!empty($student->otp) && strtotime($student->otp_expiry) > time()) {

        $remaining = strtotime($student->otp_expiry) - time();
        $minutes = ceil($remaining / 60);

        return $this->output->set_output(json_encode([
            'status' => false,
            'message' => "OTP already sent. Please wait {$minutes} minute(s)."
        ]));
    }

    // Generate new OTP
    $otp = rand(1000, 9999);
    $expiry = date('Y-m-d H:i:s', strtotime('+15 minutes'));

    $this->db->where('id', $student->id)
             ->update('students', [
                 'otp' => $otp,
                 'otp_expiry' => $expiry
             ]);

    // 📲 Send SMS here
    // send_sms($phone, "Your OTP is $otp");

    return $this->output->set_output(json_encode([
        'status' => true,
        'message' => 'OTP sent successfully',
         'otp' => $otp,
        'otp_expiry' => $expiry
    ]));
}


public function verifyOtp()
{
    if ($this->input->server('REQUEST_METHOD') !== 'POST') {
        return $this->output->set_status_header(405);
    }

    $phone = $this->input->post('phone', TRUE);
    $otp   = $this->input->post('otp', TRUE);

    $student = $this->db
        ->where('mobileno', $phone)
        ->where('otp', $otp)
        ->where('otp_expiry >=', date('Y-m-d H:i:s'))
        ->get('students')
        ->row();

    if (!$student) {
        return $this->output->set_output(json_encode([
            'status' => false,
            'message' => 'Invalid or expired OTP'
        ]));
    }

    // Clear OTP after success
    $this->db->where('id', $student->id)
             ->update('students', [
                 'otp' => NULL,
                 'otp_expiry' => NULL
             ]);

        $student = $this->db
            ->where('id', $student->id)
            ->get('students')
            ->row();
    

    return $this->output->set_output(json_encode([
        'status' => true,
        'message' => 'Login successful',
        'student' =>$student
    ]));
}


public function staffLogin()
    {
       
        $app_name = $this->setting_model->get();
        $app_name = $app_name[0]['name'];
        	
        
        $data          = array();
        $data['title'] = 'Login';
        $school        = $this->setting_model->get();

        $data['name'] = $app_name;

        $notice_content     = $this->config->item('ci_front_notice_content');
        $notices            = $this->cms_program_model->getByCategory($notice_content, array('start' => 0, 'limit' => 5));
        $data['notice']     = $notices;
        $data['school']     = $school[0];
       
        
        $this->form_validation->set_rules('username', $this->lang->line('username'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('password', $this->lang->line('password'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
           
            $data['name']          = $app_name;
            
             return $this->output->set_output(json_encode([
                    'status' => false,
                    'error_message' => 'Invalid Info'
                ]));

        } else {
            $login_post = array(
                'email'    => $this->input->post('username'),
                'password' => $this->input->post('password'),
            );
            
            $setting_result        = $this->setting_model->get();

            // Multi-School: scope staff login to the requested tenant (school_id/school_code).
            // Backward compatible: with no school supplied, defaults to school #1.
            $this->tenant_lib->resolveFromRequest();
            $req_school            = $this->tenant_lib->currentSchoolId();
            $result                = $this->staff_model->checkLogin($login_post);
            if ($result && $req_school && $req_school !== Tenant_lib::ALL
                && isset($result->school_id) && (int) $result->school_id !== (int) $req_school) {
                $result = false; // credentials belong to a different school
            }
           
            if (!empty($result->language_id)) {
                $lang_array = array('lang_id' => $result->language_id, 'language' => $result->language);
                if ($result->is_rtl == 1) {
                    $is_rtl = "enabled";
                } else {
                    $is_rtl = "disabled";
                }

            } else {
                $lang_array = array('lang_id' => $setting_result[0]['lang_id'], 'language' => $setting_result[0]['language']);
                if ($setting_result[0]['is_rtl'] == 1) {
                    $is_rtl = "enabled";
                } else {
                    $is_rtl = "disabled";
                }
            }

            if ($result) {
                if ($result->is_active) {
                    if ($result->surname != "") {
                        $logusername = $result->name . " " . $result->surname;
                    } else {
                        $logusername = $result->name;
                    }

                    $session_data = array(
                        'id'                     => $result->id,
                        'username'               => $logusername,
                        'email'                  => $result->email,
                        'image'                  =>$result->image,
                        'roles'                  => $result->roles,
                        'date_format'            => $setting_result[0]['date_format'],                        
                        'currency'               => ($result->currency == 0) ? $setting_result[0]['currency']: $result->currency,
                        'currency_base_price'    => ($result->base_price == 0) ? $setting_result[0]['base_price']: $result->base_price,
                        'currency_format'        => $setting_result[0]['currency_format'],
                        'currency_symbol'        => ($result->symbol == "0") ? $setting_result[0]['currency_symbol'] : $result->symbol,
                        'currency_place'         => $setting_result[0]['currency_place'],
                        'start_month'            => $setting_result[0]['start_month'],
                        'start_week'             => date("w", strtotime($setting_result[0]['start_week'])),
                        'school_name'            => $setting_result[0]['name'],
                        'timezone'               => $setting_result[0]['timezone'],
                        'sch_name'               => $setting_result[0]['name'],
                        'language'               => $lang_array,
                        'is_rtl'                 => $is_rtl,
                        'theme'                  => $setting_result[0]['theme'],
                        'gender'                 => $result->gender,                     
                        'db_array'               => ['base_url'               => $setting_result[0]['base_url'],
                                                     'folder_path'            => $setting_result[0]['folder_path'],
                                                     'db_group'=>'default'
                                                    ],
                        'superadmin_restriction' => $setting_result[0]['superadmin_restriction'],
                        'saas_key'               => $setting_result[0]['saas_key'],
                        'admin_panel_whatsapp'   		=> $setting_result[0]['admin_panel_whatsapp'],
                        'admin_panel_whatsapp_mobile'   => $setting_result[0]['admin_panel_whatsapp_mobile'],
                        'admin_panel_whatsapp_from'   	=> $setting_result[0]['admin_panel_whatsapp_from'],
                        'admin_panel_whatsapp_to'  		=> $setting_result[0]['admin_panel_whatsapp_to'],						
                    );

                    $this->session->set_userdata('admin', $session_data);

                    $role      = $this->customlib->getStaffRole();

                    $staffRole          = $this->staff_model->getStaffRole();
                    
                    $role_name = json_decode($role)->name;

                    $this->customlib->setUserLog($this->input->post('username'), $role_name);
                    $result = $this->customlib->getUserData();
                    $result['staffRolelist'] = $staffRole;

                     return $this->output->set_output(json_encode([
                        'status' => true,
                        'message' => 'Login Success',
                        'result' => $result
                    ]));

                } else {
                    return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => 'Login Failed'
                    ]));
                }
            } else {

            return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => $this->lang->line('invalid_username_or_password')
                    ]));
            }
        }
    }

    private function loginThoughID($id){

        $result = $this->staff_model->staffDatabyID($id);
        if(!$result){

        return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => "Invalid"
                    ]));

        }
        $setting_result        = $this->setting_model->get();
        if (!empty($result->language_id)) {
                    $lang_array = array('lang_id' => $result->language_id, 'language' => $result->language);
                    if ($result->is_rtl == 1) {
                        $is_rtl = "enabled";
                    } else {
                        $is_rtl = "disabled";
                    }

                } else {
                    $lang_array = array('lang_id' => $setting_result[0]['lang_id'], 'language' => $setting_result[0]['language']);
                    if ($setting_result[0]['is_rtl'] == 1) {
                        $is_rtl = "enabled";
                    } else {
                        $is_rtl = "disabled";
                    }
                }

                if ($result) {
                    if ($result->is_active) {
                        if ($result->surname != "") {
                            $logusername = $result->name . " " . $result->surname;
                        } else {
                            $logusername = $result->name;
                        }

                        $session_data = array(
                            'id'                     => $result->id,
                            'username'               => $logusername,
                            'email'                  => $result->email,
                            'image'                  =>$result->image,
                            'roles'                  => $result->roles,
                            'date_format'            => $setting_result[0]['date_format'],                        
                            'currency'               => ($result->currency == 0) ? $setting_result[0]['currency']: $result->currency,
                            'currency_base_price'    => ($result->base_price == 0) ? $setting_result[0]['base_price']: $result->base_price,
                            'currency_format'        => $setting_result[0]['currency_format'],
                            'currency_symbol'        => ($result->symbol == "0") ? $setting_result[0]['currency_symbol'] : $result->symbol,
                            'currency_place'         => $setting_result[0]['currency_place'],
                            'start_month'            => $setting_result[0]['start_month'],
                            'start_week'             => date("w", strtotime($setting_result[0]['start_week'])),
                            'school_name'            => $setting_result[0]['name'],
                            'timezone'               => $setting_result[0]['timezone'],
                            'sch_name'               => $setting_result[0]['name'],
                            'language'               => $lang_array,
                            'is_rtl'                 => $is_rtl,
                            'theme'                  => $setting_result[0]['theme'],
                            'gender'                 => $result->gender,                     
                            'db_array'               => ['base_url'               => $setting_result[0]['base_url'],
                                                        'folder_path'            => $setting_result[0]['folder_path'],
                                                        'db_group'=>'default'
                                                        ],
                            'superadmin_restriction' => $setting_result[0]['superadmin_restriction'],
                            'saas_key'               => $setting_result[0]['saas_key'],
                            'admin_panel_whatsapp'   		=> $setting_result[0]['admin_panel_whatsapp'],
                            'admin_panel_whatsapp_mobile'   => $setting_result[0]['admin_panel_whatsapp_mobile'],
                            'admin_panel_whatsapp_from'   	=> $setting_result[0]['admin_panel_whatsapp_from'],
                            'admin_panel_whatsapp_to'  		=> $setting_result[0]['admin_panel_whatsapp_to'],						
                        );

                        $this->session->set_userdata('admin', $session_data);

                        $role      = $this->customlib->getStaffRole();
                        $role_name = json_decode($role)->name;

                        $this->customlib->setUserLog($this->input->post('username'), $role_name);
                    }
                }
    }

public function staffDashboard(){

    $this->output->set_content_type('application/json');
    $id = $this->input->post('id', TRUE);
    $this->loginThoughID($id);

     $role            = $this->customlib->getStaffRole();
        $role_id         = json_decode($role)->id;
        $data['role_id'] = $role_id;

        $staffid       = $this->customlib->getStaffID();
        
        $notifications = $this->notification_model->getUnreadStaffNotification($staffid, $role_id);

        $data['notifications'] = $notifications;
        $input                 = $this->setting_model->getCurrentSessionName();

        list($a, $b)  = explode('-', $input);
        $Current_year = $a;
        if (strlen($b) == 2) {
            $Next_year = substr($a, 0, 2) . $b;
        } else {
            $Next_year = $b;
        }
        $data['mysqlVersion'] = $this->setting_model->getMysqlVersion();
        $data['sqlMode']      = $this->setting_model->getSqlMode();
        //========================== Current Attendence ==========================
        $current_date       = date('Y-m-d');
        $data['title']      = 'Dashboard';
        $Current_start_date = date('01');

        $last_day_this_month        = date($Current_year.'-m-t');  //added
        $total_students_heads       = 0; //added

        $Current_date       = date('d');
        $Current_month      = date('m');
        $month_collection   = 0;
        $month_expense      = 0;
        $total_students     = 0;
        $total_teachers     = 0;
        $ar                 = $this->startmonthandend();
        $year_str_month     = $Current_year . '-' . $ar[0] . '-01';
        $year_end_month     = date("Y-m-t", strtotime($Next_year . '-' . $ar[1] . '-01'));
        $getDepositeAmount  = $this->studentfeemaster_model->getDepositAmountBetweenDate($year_str_month, $year_end_month);
        $student_transport_fee = $this->studenttransportfee_model->getTransportDepositAmountBetweenDate($year_str_month, $year_end_month);
        
        //======================Current Month Collection ==============================
        
        $first_day_this_month     = date('Y-m-01'); //comment
        
        // $current_month_collection = $this->studentfeemaster_model->getDepositAmountBetweenDate($first_day_this_month, $current_date);
        $month_collection         = $this->whatever($getDepositeAmount, $first_day_this_month, $current_date);
        $month_transport_collection         = $this->whatever($student_transport_fee, $first_day_this_month, $current_date);

        $data['month_collection'] = $month_collection+$month_transport_collection;


        $tot_students = $this->studentsession_model->getTotalStudentBySession();
        if (!empty($tot_students)) {
            $total_students = $tot_students->total_student;
        }

        $data['total_students'] = $total_students;
        $tot_roles              = $this->role_model->get();
        foreach ($tot_roles as $key => $value) {

            $count_roles[$value["name"]] = $this->role_model->count_roles($value["id"]);

        }
        $data["roles"] = $count_roles;

        //======================== get collection by month ==========================
        $start_month = strtotime($year_str_month);
        $start       = strtotime($year_str_month);
        $end         = strtotime($year_end_month);
        $coll_month  = array();
        $s           = array();
        $total_month = array();
        while ($start_month <= $end) {
            $total_month[] = $this->lang->line(strtolower(date('F', $start_month)));
            $month_start   = date('Y-m-d', $start_month);
            $month_end     = date("Y-m-t", $start_month);
            $return        = $this->whatever($getDepositeAmount, $month_start, $month_end);
            $tranport_amt      = $this->whatever($student_transport_fee,  $month_start, $month_end);
            
            if (!IsNullOrEmptyString($return) || !IsNullOrEmptyString($tranport_amt)) {
                $s[] = convertBaseAmountCurrencyFormat($return+$tranport_amt);
            } else {
                $s[] = "0.00";
            }

            $start_month = strtotime("+1 month", $start_month);
        }
        //======================== getexpense by month ==============================
        $ex                  = array();
        $start_session_month = strtotime($year_str_month);
        while ($start_session_month <= $end) {

            $month_start = date('Y-m-d', $start_session_month);
            $month_end   = date("Y-m-t", $start_session_month);

            $expense_monthly = $this->expense_model->getTotalExpenseBwdate($month_start, $month_end);

            if (!empty($expense_monthly)) {
                $amt  = 0;
                $ex[] = $amt + convertBaseAmountCurrencyFormat($expense_monthly->amount);
            }

            $start_session_month = strtotime("+1 month", $start_session_month);
        }

        $data['yearly_collection'] = $s;
       
        $data['yearly_expense']    = $ex;
        $data['total_month']       = $total_month;

        //======================= current month collection /expense ===================
     
        // hardcoded '01' for first day
        $startdate       = date('m/01/Y');
        $enddate         = date('m/t/Y');
        $start           = strtotime($startdate);
        $end             = strtotime($enddate);
        $currentdate     = $start;
        $month_days      = array();
        $days_collection = array();
        while ($currentdate <= $end) {
            $cur_date          = date('Y-m-d', $currentdate);
            $month_days[]      = date('d', $currentdate);
            $coll_amt          = $this->whatever($getDepositeAmount, $cur_date, $cur_date);
            $tranport_amt      = $this->whatever($student_transport_fee, $cur_date, $cur_date);
            $days_collection[] = convertBaseAmountCurrencyFormat($coll_amt+$tranport_amt);
            $currentdate       = strtotime('+1 day', $currentdate);
        }
        $data['current_month_days'] = $month_days;
        $data['days_collection']    = $days_collection;


        //======================= current month /expense ==============================
        // hardcoded '01' for first day

        $startdate    = date('m/01/Y');
        $enddate      = date('m/t/Y');
        $start        = strtotime($startdate);
        $end          = strtotime($enddate);
        $currentdate  = $start;
        $days_expense = array();
        while ($currentdate <= $end) {
            $cur_date       = date('Y-m-d', $currentdate);
            $month_days[]   = date('d', $currentdate);
            $currentdate    = strtotime('+1 day', $currentdate);
            $ct             = $this->getExpensebyday($cur_date);
            $days_expense[] = convertBaseAmountCurrencyFormat($ct);
        }

        $data['days_expense']        = $days_expense;
        $student_fee_history         = $this->studentfee_model->getTodayStudentFees();
        $data['student_fee_history'] = $student_fee_history;

        $event_colors         = array("#03a9f4", "#c53da9", "#757575", "#8e24aa", "#d81b60", "#7cb342", "#fb8c00", "#fb3b3b");
        $data["event_colors"] = $event_colors;
        $userdata             = $this->customlib->getUserData();
        $data["role"]         = $userdata["user_type"];
        $start_date           = date('Y-m-01');
        $end_date             = date('Y-m-t');
        $current_month        = date('F');
        $student_due_fee       = $this->studentfeemaster_model->getFeesAwaiting($start_date, $end_date);
        $student_transport_fee = $this->studentfeemaster_model->getTransportFeesByDueDate($start_date, $end_date);
        $data['fees_awaiting'] = $student_due_fee;

        $total_fess    = 0;
        $total_paid    = 0;
        $total_unpaid  = 0;
        $total_partial = 0;

        if (!empty($student_transport_fee)) {

            foreach ($student_transport_fee as $transport_fees_key => $transport_fees_value) {

                $amount_to_be_taken = 0;
                if ($transport_fees_value->fees > 0) {
                    $amount_to_be_taken = $transport_fees_value->fees;
                }

                if ($amount_to_be_taken > 0) {
                    $total_fess++;

                    if (is_string($transport_fees_value->amount_detail) && is_array(json_decode($transport_fees_value->amount_detail, true)) && (json_last_error() == JSON_ERROR_NONE)) {
                        $amount_paid_details = (json_decode($transport_fees_value->amount_detail));
                        $amt_                = 0;
                        foreach ($amount_paid_details as $amount_paid_detail_key => $amount_paid_detail_value) {
                            $amt_ = $amt_ + $amount_paid_detail_value->amount;
                        }

                        if (($amt_ + $amount_paid_detail_value->amount_discount) >= $amount_to_be_taken) {
                            $total_paid++;
                        } elseif (($amt_ + $amount_paid_detail_value->amount_discount) < $amount_to_be_taken) {
                            $total_partial++;
                        }
                    } else {
                        $total_unpaid++;
                    }

                }
            }
        }

        if (!empty($data['fees_awaiting'])) {

            foreach ($data['fees_awaiting'] as $awaiting_key => $awaiting_value) {

                $amount_to_be_taken = 0;
                if ($awaiting_value->is_system) {
                    if ($awaiting_value->amount > 0) {
                        $amount_to_be_taken = $awaiting_value->amount;
                    }
                } elseif ($awaiting_value->is_system == 0) {
                    if ($awaiting_value->fee_amount > 0) {
                        $amount_to_be_taken = $awaiting_value->fee_amount;
                    }
                }

                if ($amount_to_be_taken > 0) {
                    $total_fess++;

                    if (is_string($awaiting_value->amount_detail) && is_array(json_decode($awaiting_value->amount_detail, true)) && (json_last_error() == JSON_ERROR_NONE)) {
                        $amount_paid_details = (json_decode($awaiting_value->amount_detail));
                        $amt_                = 0;
                        foreach ($amount_paid_details as $amount_paid_detail_key => $amount_paid_detail_value) {
                            $amt_ = $amt_ + $amount_paid_detail_value->amount;
                        }

                        if (($amt_ + $amount_paid_detail_value->amount_discount) >= $amount_to_be_taken) {
                            $total_paid++;
                        } elseif (($amt_ + $amount_paid_detail_value->amount_discount) < $amount_to_be_taken) {
                            $total_partial++;
                        }
                    } else {
                        $total_unpaid++;
                    }

                }
            }
        }

        $incomegraph = $this->income_model->getIncomeHeadsData($start_date, $end_date);
        foreach ($incomegraph as $key => $value) {
            $incomegraph[$key]['total'] = convertBaseAmountCurrencyFormat($value['total']);
        }
        $data['incomegraph'] = $incomegraph;

        $expensegraph = $this->expense_model->getExpenseHeadData($start_date, $end_date);
        foreach ($expensegraph as $key => $value) {
            $expensegraph[$key]['total'] = convertBaseAmountCurrencyFormat($value['total']);
            if (!empty($value['total'])) {
                $month_expense = $month_expense + convertBaseAmountCurrencyFormat($value['total']);
            }
        }
        $data['expensegraph']  = $expensegraph;
        $data['month_expense'] = $month_expense;

        $enquiry       = $this->admin_model->getAllEnquiryCount($start_date, $end_date);
        $total_counter = $total_paid + $total_unpaid + $total_partial;

        $data['fees_overview'] = array(
            'total_unpaid'     => $total_unpaid,
            'unpaid_progress'  => ($total_counter > 0) ? (($total_unpaid * 100) / $total_counter) : 0,
            'total_paid'       => $total_paid,
            'paid_progress'    => ($total_counter > 0) ? (($total_paid * 100) / $total_counter) : 0,
            'total_partial'    => $total_partial,
            'partial_progress' => ($total_counter > 0) ? (($total_partial * 100) / $total_counter) : 0,
        );

        $total_enquiry = $enquiry['total'];

        if ($total_enquiry > 0) {

            $data['enquiry_overview'] = array(
                'won'              => $enquiry['complete'],
                'won_progress'     => ($enquiry['complete'] * 100) / $total_enquiry,
                'active'           => $enquiry['active'],
                'active_progress'  => ($enquiry['active'] * 100) / $total_enquiry,
                'passive'          => $enquiry['passive'],
                'passive_progress' => ($enquiry['passive'] * 100) / $total_enquiry,
                'dead'             => $enquiry['dead'],
                'dead_progress'    => ($enquiry['dead'] * 100) / $total_enquiry,
                'lost'             => $enquiry['lost'],
                'lost_progress'    => ($enquiry['lost'] * 100) / $total_enquiry,
            );

        } else {

            $data['enquiry_overview'] = array(
                'won'              => 0,
                'won_progress'     => 0,
                'active'           => 0,
                'active_progress'  => 0,
                'passive'          => 0,
                'passive_progress' => 0,
                'dead'             => 0,
                'dead_progress'    => 0,
                'lost'             => 0,
                'lost_progress'    => 0,
            );

        }

        $data['total_paid'] = $total_paid;
        $data['total_fees'] = $total_fess;
        if ($total_fess > 0) {
            $data['fessprogressbar'] = ($total_paid * 100) / $total_fess;
        } else {
            $data['fessprogressbar'] = 0;
        }

        $data['total_enquiry']  = $total_enquiry  = $enquiry['total'];
        $data['total_complete'] = $complete_enquiry = $enquiry['complete'];
        if ($total_enquiry > 0) {
            $data['fenquiryprogressbar'] = ($complete_enquiry * 100) / $total_enquiry;
        } else {
            $data['fenquiryprogressbar'] = 0;
        }

        $bookoverview      = $this->book_model->bookoverview($start_date, $end_date);
        $bookduereport     = $this->bookissue_model->dueforreturn($start_date, $end_date);
        $forreturndata     = $this->bookissue_model->forreturn($start_date, $end_date);
        $dueforreturn      = $bookduereport[0]['total'];
        $forreturn         = $forreturndata[0]['total'];
        $total_qty         = $bookoverview[0]['qty'];
        $total_issued      = $bookoverview[0]['total_issue'];
        $availble          = '0';
        $availble_progress = 0;
        $issued_progress   = 0;

        if ($total_qty > 0) {
            $availble          = $total_qty - $total_issued;
            $availble_progress = ($availble * 100) / $total_qty;
            $issued_progress   = ($total_issued * 100) / $total_qty;
        }

        $data['book_overview'] = array(
            'total'             => $total_qty,
            'total_progress'    => 100,
            'availble'          => $availble,
            'availble_progress' => round($availble_progress, 2),
            'total_issued'      => $total_issued,
            'issued_progress'   => round($issued_progress, 2),
            'dueforreturn'      => $dueforreturn,
            'forreturn'         => $forreturn,
        );

        $Attendence                   = $this->stuattendence_model->getTodayDayAttendance($total_students);
        $data['attendence_data']      = $Attendence;
        $Staffattendence              = $this->staff_model->getTodayDayAttendance();
        $data['Staffattendence_data'] = $Staffattendence;
        $getTotalStaff                = $this->staff_model->getTotalStaff();
        $data['getTotalStaff_data']   = $getTotalStaff;
        if ($getTotalStaff > 0) {$percentTotalStaff_data = ($Staffattendence * 100) / ($getTotalStaff);} else { $percentTotalStaff_data = '0';}
        $data['percentTotalStaff_data'] = $percentTotalStaff_data;
        $data['sch_setting']            = $this->sch_setting_detail;

		// new features code added
        // $input_session   = $this->setting_model->getCurrentSessionName();
        // list($a, $b)  = explode('-', $input_session);
        // $Current_year = $a;
        // if(date("m")>=1 && date("m")<=4 ){
            // $Current_year = $b;
        // }else{
            // $Current_year = $a;
        // }

        // $first_day_this_month  = date("20$Current_year".'-m-01'); //added
        // $last_day_this_month  = date("20$Current_year".'-m-t');  //added

        $data['getStudentMonthlyLeave'] = $getStudentMonthlyLeave = count($this->apply_leave_model->getStudentMonthlyLeave($start_date, $end_date));
        $data['getStudentApproveMonthlyLeave'] = $getStudentApproveMonthlyLeave =   count($this->apply_leave_model->getStudentApproveMonthlyLeave($start_date, $end_date));
 
        if ($getStudentMonthlyLeave > 0) {
            $data['studentapprovemonthlyleave'] = ($getStudentApproveMonthlyLeave * 100) / $getStudentMonthlyLeave;
        } else {
            $data['studentapprovemonthlyleave'] = 0;
        }
        $data['getStaffMonthlyLeave'] = $getStaffMonthlyLeave = count($this->apply_leave_model->getStaffMonthlyLeave($start_date, $end_date));
		
		// echo $this->db->last_query(); die;
		
        $data['getStaffApproveMonthlyLeave'] = $getStaffApproveMonthlyLeave =   count($this->apply_leave_model->getStaffApproveMonthlyLeave($start_date, $end_date));

        if ($getStaffMonthlyLeave > 0) {
            $data['staffapprovemonthlyleave'] = ($getStaffApproveMonthlyLeave * 100) / $getStaffMonthlyLeave;
        } else {
            $data['staffapprovemonthlyleave'] = 0;
        }

        $tot_head_students = $this->studentsession_model->getTotalHeadCountBySession();
        $tot_students = $this->studentsession_model->getTotalStudentBySession();
        if (!empty($tot_students)) {
            $total_students = $tot_students->total_student;
        }

        if (!empty($tot_head_students)) {
            $total_students_heads = count($tot_head_students);
        } 

        $data['total_students'] = $total_students;
        $data['total_students_heads'] = $total_students_heads;
		// new features code added

        if ($data['sch_setting']->attendence_type == 0) {
            $data['std_graphclass'] = "col-lg-4 col-md-6 col-sm-6";
        } else {
            $data['std_graphclass'] = "col-lg-4 col-md-6 col-sm-6";
        }

        return $this->output->set_output(json_encode([
                        'status' => true,
                        'message' => 'Dashboard',
                        'result' => $data
                    ]));
    

}   

public function startmonthandend()
    {
        $startmonth = $this->setting_model->getStartMonth();
        if ($startmonth == 1) {
            $endmonth = 12;
        } else {
            $endmonth = $startmonth - 1;
        }
        return array($startmonth, $endmonth);
    }

    public function getCollectionbymonth()
    {
        $result = $this->admin_model->getMonthlyCollection();
        return $result;
    }

    public function getCollectionbyday($date)
    {
        $result = $this->admin_model->getCollectionbyDay($date);
        if ($result[0]['amount'] == "") {
            $return = 0;
        } else {
            $return = $result[0]['amount'];
        }
        return $return;
    }

    public function getExpensebyday($date)
    {
        $result = $this->admin_model->getExpensebyDay($date);
        if ($result[0]['amount'] == "") {
            $return = 0;
        } else {
            $return = $result[0]['amount'];
        }
        return $return;
    }

    public function getExpensebymonth()
    {
        $result = $this->admin_model->getMonthlyExpense();
        return $result;
    }

     public function whatever($feecollection_array, $start_month_date, $end_month_date)
    {
        $return_amount = 0;
        $st_date       = strtotime($start_month_date);
        $ed_date       = strtotime($end_month_date);
        if (!empty($feecollection_array)) {
            while ($st_date <= $ed_date) {
                $date = date('Y-m-d', $st_date);
                foreach ($feecollection_array as $key => $value) {

                    if ($value['date'] == $date) {

                        $return_amount = $return_amount + $value['amount'] + $value['amount_fine'];
                    }
                }
                $st_date = $st_date + 86400;
            }
        } else {

        }

        return $return_amount;
    }

}
