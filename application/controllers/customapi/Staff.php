<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Staff extends MY_Controller
{


public $sch_setting_detail = array();

    public function __construct()
    {
        parent::__construct();
        $this->load->library('SaasValidation');
        $this->load->library('media_storage');
        $this->config->load('app-config');
        $this->config->load("payroll");
        $this->load->library('smsgateway');
        $this->load->library('mailsmsconf');
        $this->load->library('encoding_lib');
         $this->load->model("leaverequest_model");
       // $this->load->model("classteacher_model");
        $this->load->model('setting_model');
         $this->load->model("holiday_model");
          $this->load->model("staffAttendaceSetting_model"); 
        $this->load->library('customlib');
        $this->load->model(array("timeline_model", "student_edit_field_model", 'transportfee_model', 'marksdivision_model', 'module_model',"classteacher_model",'class_section_time_model','studentAttendaceSetting_model'));
        $this->blood_group        = $this->config->item('bloodgroup');
        $this->sch_setting_detail = $this->setting_model->getSetting();
        $this->role;
        $this->staff_attendance = $this->config->item('staffattendance');
        $this->sch_current_session = [];
        $this->staff_id            = "";
        $this->sch_setting_detail  = $this->setting_model->getSetting();
        $this->start_weekday       = strtolower($this->sch_setting_detail->start_week);
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

 public function disablestafflist()
    {
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        
        $this->loginThoughID($id);

        $data['title'] = 'Staff Search';
        $staffRole     = $this->staff_model->getStaffRole();

        $data["role"]       = $staffRole;
        $resultlist         = $this->staff_model->searchFullText('', 0);
        $data['resultlist'] = $resultlist;

         return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Staff List",
                        'data' => $data
                    ]));
       
    }
   

     public function list()
    {
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        
        $this->loginThoughID($id);

        $data['title']  = $this->lang->line('staff_list');
        $data['fields'] = $this->customfield_model->get_custom_fields('staff', 1);
        $this->session->set_userdata('top_menu', 'HR');
        $this->session->set_userdata('sub_menu', 'HR/staff');
        $search             = $this->input->post("search");
        $resultlist         = $this->staff_model->searchFullText("", 1);
        $data['resultlist'] = $resultlist;
        $staffRole          = $this->staff_model->getStaffRole();
        $data["role"]       = $staffRole;
        $data["role_id"]    = "";
        $search_text        = $this->input->post('search_text');
        if (isset($search)) {
            if ($search == 'search_filter') {
                $this->form_validation->set_rules('role', $this->lang->line('role'), 'trim|required|xss_clean');
                if ($this->form_validation->run() == false) {
                    $data["resultlist"] = array();
                } else {
                    $data['searchby']    = "filter";
                    $role                = $this->input->post('role');
                    $data['employee_id'] = $this->input->post('empid');
                    $data["role_id"]     = $role;
                    $data['search_text'] = $this->input->post('search_text');
                    $resultlist          = $this->staff_model->getEmployee($role, 1);
                    $data['resultlist']  = $resultlist;
                }
            } else if ($search == 'search_full') {
                $data['searchby']    = "text";
                $data['search_text'] = trim($this->input->post('search_text'));
                $resultlist          = $this->staff_model->searchFullText($search_text, 1);
                $data['resultlist']  = $resultlist;
                $data['title']       = $this->lang->line('search_details') . ': ' . $data['search_text'];
            }
        }

       return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Staff List",
                        'data' => $data
                    ]));
    }

    public function attendance()
    {
         $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        
        $this->loginThoughID($id);

        $data['title']        = 'Staff Attendance List';
        $data['title_list']   = 'Staff Attendance List';
        $user_type            = $this->staff_model->getStaffRole();
        $data['sch_setting']  = $this->setting_model->getSetting();
        $data['user_type']    = $user_type;
        $data['date']         = "";
        $user_type_id         = $this->input->post('user_id');
        $data["user_type_id"] = $user_type_id;
        $staff_settings           = $this->staffAttendaceSetting_model->getRoleWiseAttendanceSetting($user_type_id);
        $data['staff_settings']   = $staff_settings;   

        if (!(isset($user_type_id))) {
           
                return $this->output->set_output(json_encode([
                                'status' => true,
                                'success_message' => "Staff Attandence List",
                                'data' => $data
                            ]));
        } else {
            $user_type            = $this->input->post('user_id');
            $date                 = $this->input->post('date');
            $user_list            = $this->staffattendancemodel->get();
            $data['userlist']     = $user_list;
            $data['class_id']     = $user_list;
            $data['user_type_id'] = $user_type_id;
            $data['section_id']   = "";
            $data['date']         = $date;
            $is_first_time_attendance      = true;
            $search               = $this->input->post('search');
            $holiday              = $this->input->post('holiday');
            $this->session->set_flashdata('msg', '');
            if ($search == "saveattendence") {
            
                $user_type_ary       = $this->input->post('student_session');
                $attendance_array=[];
                $absent_staff_list=[];
                foreach ($user_type_ary as $key => $value) {
                    
                    $attendencetype = $this->input->post('attendencetype' . $value);
                  $in_time    =   $this->input->post("in_time_" . $value);
                  $out_time   =   $this->input->post("out_time_" . $value);

                    if((!isset($in_time) || $in_time=="") && (!isset($out_time) || $out_time=="")){
                        $in_time  = null;
                        $out_time = null;
                    }else{
                        $in_time=date('H:i:s', strtotime($this->input->post("in_time_" . $value)));
                        $out_time=date('H:i:s', strtotime($this->input->post("out_time_" . $value)));
                    }

                    $absent_config = $this->staff_attendance['absent'];
                
                    if ($attendencetype == $absent_config) {
                        $absent_staff_list[] = $value;
                    }

                    $attendance_array[] = array(                       
                        'staff_id'                 => $value,
                        'staff_attendance_type_id' => $this->input->post('attendencetype' . $value),
                        'remark'                   => $this->input->post("remark" . $value),
                        'in_time'                  => $in_time,
                        'out_time'                 => $out_time, 
                        'date'                     => date('Y-m-d', $this->customlib->datetostrtotime($date)),
                        'updated_at'               => date('Y-m-d', $this->customlib->datetostrtotime($date)),
                    );
                }
               
                $this->staffattendancemodel->addorUpdate($attendance_array);
                //added mail sms code //
                if (!empty($absent_staff_list)) {
                    $this->mailsmsconf->mailsms('staff_absent_attendence', $absent_staff_list, $date);
                }
                if (!empty($present_staff_list)) {
                    $this->mailsmsconf->mailsms('staff_present_attendence', $present_staff_list, $date);
                }
                // added mail sms code //

                $absent_config = $this->config_attendance['absent'];
                $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">' . $this->lang->line('success_message') . '</div>');
                redirect('admin/staffattendance/index');
            }

            $attendencetypes             = $this->attendencetype_model->getStaffAttendanceType();
            $data['attendencetypeslist'] = $attendencetypes;        
            $resultlist                  = $this->staffattendancemodel->searchAttendenceUserType($user_type, date('Y-m-d', $this->customlib->datetostrtotime($date)));
            if (!empty($resultlist)) {
                foreach ($resultlist as $key => $value) {
                    if (!IsNullOrEmptyString($value['staff_attendance_type_id'])) {
                        $is_first_time_attendance = false;
                    }
                }
            }
            $data['is_first_time_attendance']  = $is_first_time_attendance;
            $data['resultlist']  = $resultlist;
            
    }
                   return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Staff Attandence List",
                        'data' => $data
                    ]));
    }

     public function leaverequest()
    {
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        
        $this->loginThoughID($id);

        $leave_request         = $this->leaverequest_model->staff_leave_request();
        $data["leave_request"] = $leave_request;
        $LeaveTypes            = $this->staff_model->getLeaveType();
        $userdata              = $this->customlib->getUserData();
        $data["leavetype"]     = $LeaveTypes;
        $staffRole             = $this->staff_model->getStaffRole();
        $data["staffrole"]     = $staffRole;
        $data["status"]        = $this->status;

         return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Staff Leave List",
                        'data' => $data
                    ]));
    }

   
    
}

    

