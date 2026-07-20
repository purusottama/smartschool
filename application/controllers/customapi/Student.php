<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Student extends MY_Controller
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
       // $this->load->model("classteacher_model");
        $this->load->model('setting_model');
        $this->load->library('customlib');
        $this->load->model(array("timeline_model", "student_edit_field_model", 'transportfee_model', 'marksdivision_model', 'module_model',"classteacher_model",'class_section_time_model','studentAttendaceSetting_model'));
        $this->blood_group        = $this->config->item('bloodgroup');
        $this->sch_setting_detail = $this->setting_model->getSetting();
        $this->role;
        $this->staff_attendance = $this->config->item('staffattendance');
    }

    // public function __construct()
    // {
    //     parent::__construct();
    //     $this->load->model('setting_model');
    //     $this->load->library('customlib');
    // }
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


    public function dtstudentlist()
    {
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $this->loginThoughID($id);

       $currency_symbol = $this->customlib->getSchoolCurrencyFormat();
        $class           = $this->input->post('class_id');
        $section         = $this->input->post('section_id');
        $search_text     = $this->input->post('search_text');
        $search_type     = $this->input->post('srch_type') ?? 'search_full';
        $classlist       = $this->class_model->get();
        $classlist       = $classlist;
        $carray          = array();
        if (!empty($classlist)) {
            foreach ($classlist as $ckey => $cvalue) {
                $carray[] = $cvalue["id"];
            }
        }

        $sch_setting = $this->sch_setting_detail;

        if ($search_type == "search_filter") {

            $resultlist = $this->student_model->searchdtByClassSection($class, $section);
        } elseif ($search_type == "search_full") {

            $resultlist = $this->student_model->searchFullText($search_text, $carray);
        }

        $students = array();
        $students = json_decode($resultlist);

        $dt_data = array();
        $fields  = $this->customfield_model->get_custom_fields('students', 1);

        if (!empty($students->data)) {
            foreach ($students->data as $student_key => $student) {

                $editbtn    = '';
                $deletebtn  = '';
                $viewbtn    = '';
                $collectbtn = '';
                $print_button="";

                //$viewbtn = "<div class='white-space-nowrap'><a href='" . base_url() . "student/view/" . $student->id . "'   class='btn btn-default btn-xs'  data-toggle='tooltip' title='" . $this->lang->line('view') . "'><i class='fa fa-reorder'></i></a>";

                

                $loading="<i class='fa fa-circle-o-notch fa-spin'></i>";
               
                $row   = array();
                $row[] = $student->admission_no;
                $row[] = $this->customlib->getFullName($student->firstname, $student->middlename, $student->lastname, $sch_setting->middlename, $sch_setting->lastname);//"<a href='" . base_url() . "student/view/" . $student->id . "'>" . $this->customlib->getFullName($student->firstname, $student->middlename, $student->lastname, $sch_setting->middlename, $sch_setting->lastname) . "</a>";
                $row[] = $student->roll_no;
                $row[] = $student->class . "(" . $student->section . ")";
                if ($sch_setting->father_name) {
                    $row[] = $student->father_name;
                }

                $row[] = $this->customlib->dateformat($student->dob);

                if (!empty($student->gender)) {
                    $row[] = $this->lang->line(strtolower($student->gender));
                } else {
                    $row[] = '';
                }

                if ($sch_setting->category) {
                    $row[] = $student->category;
                }
                if ($sch_setting->mobile_no) {
                    $row[] = $student->mobileno;
                }

                foreach ($fields as $fields_key => $fields_value) {

                    $custom_name   = $fields_value->name;
                    $display_field = $student->$custom_name;
                   
                    $row[] = $display_field;
                }

                $row[] = $viewbtn . '' . $editbtn . '' . $collectbtn.''.$print_button;

                $dt_data[] = $row;
            }
        }
        $sch_setting         = $this->sch_setting_detail;
       // $student_detail_view = $this->load->view('student/_searchDetailView', array('sch_setting' => $sch_setting, 'students' => $students), true);
        $json_data           = array(
            "draw"                => intval($students->draw),
            "recordsTotal"        => intval($students->recordsTotal),
            "recordsFiltered"     => intval($students->recordsFiltered),
            "data"                => $dt_data,
            //"student_detail_view" => $student_detail_view,
        );

        echo json_encode($json_data);

    }

    public function getStudentFee(){
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $this->loginThoughID($id);

        {
        $class       = $this->input->post('class_id');
        $section     = $this->input->post('section_id');
        $search_text = $this->input->post('search_text');
        $search_type = $this->input->post('search_type');
        if ($search_type == "class_search") {
            $students = $this->student_model->getDatatableByClassSection($class, $section);
        } elseif ($search_type == "keyword_search") {
            $students = $this->student_model->getDatatableByFullTextSearch($search_text);
        }
        $sch_setting = $this->sch_setting_detail;
        $students    = json_decode($students);
        $dt_data     = array();
        if (!empty($students->data)) {
            foreach ($students->data as $student_key => $student) {
                $row         = array();
                $row[]       = $student->class;
                $row[]       = $student->section;
                $row[]       = $student->admission_no;
                $row[]       = $this->customlib->getFullName($student->firstname, $student->middlename, $student->lastname, $sch_setting->middlename, $sch_setting->lastname);//"<a href='" . base_url() . "student/view/" . $student->id . "'>" . $this->customlib->getFullName($student->firstname, $student->middlename, $student->lastname, $sch_setting->middlename, $sch_setting->lastname) . "</a>";
                $sch_setting = $this->sch_setting_detail;
                if ($sch_setting->father_name) {
                    $row[] = $student->father_name;
                }
                $row[] = $this->customlib->dateformat($student->dob);
                $row[] = $student->mobileno;
                $row[] = $student->student_session_id;
               // $row[] = "<a href=" . site_url('studentfee/addfee/' . $student->student_session_id) . "  class='btn btn-info btn-xs'>" . $this->lang->line('collect_fees') . "</a>";

                $dt_data[] = $row;
            }
        }
        $json_data = array(
            "draw"            => intval($students->draw),
            "recordsTotal"    => intval($students->recordsTotal),
            "recordsFiltered" => intval($students->recordsFiltered),
            "data"            => $dt_data,
        );
        echo json_encode($json_data);
        
    }
    }

    public function classlist(){
         $class          = $this->class_model->get();
         $data['classlist']   = $class;
         echo json_encode($data);
    }

    public function getClassBySection(){
         $class_id = $this->input->get('class_id');
        $data     = $this->section_model->getClassBySection($class_id);
        echo json_encode($data);
    }

    public function getattendence(){

            $class              = $this->input->post('class_id');
            $section            = $this->input->post('section_id');
            $date               = $this->input->post('date');
            
            if(!$class || !$section || !$date){

                return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => "Please Provide Class & Section"
                    ]));

            }
            
            $data['class_id']   = $class;
            $data['section_id'] = $section;
            $data['date']       = $date;
            $search             = $this->input->post('search');

            $student_class_section_setting = $this->studentAttendaceSetting_model->getClassWiseAttendanceSettingByClassAndSection($class, $section);
            $data['student_class_section_setting']   = ($student_class_section_setting);

            $attendencetypes             = $this->attendencetype_model->get();
            $data['attendencetypeslist'] = $attendencetypes;
            $resultlist                  = $this->stuattendence_model->searchAttendenceClassSection($class, $section, date('Y-m-d', $this->customlib->datetostrtotime($date)));
            $data['resultlist']          = $resultlist;

            return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "List OF attadance",
                        'data' => $data
                    ]));
    }

    public function getfeeDetails($id = null)
    {
        if (empty($id)) {
            $id = $this->input->post('id', true);
        }
        if (empty($id)) {
            return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => 'Record id is required.',
            ]));
        }

       // $data['sch_setting']   = $this->sch_setting_detail;
        $data['title']         = 'Student Detail';
        $student               = $this->student_model->getByStudentSession($id);
        $route_pickup_point_id = $student['route_pickup_point_id'];
        $student_session_id    = $student['student_session_id'];
        $transport_fees = [];

        $module = $this->module_model->getPermissionByModulename('transport');
        if ($module['is_active']) {
            $transport_fees        = $this->studentfeemaster_model->getStudentTransportFeesByStudentSessionId($student_session_id, $route_pickup_point_id);
        }
       
        $data['student']       = $student;
        $student_due_fee       = $this->studentfeemaster_model->getStudentFees($id);
        $student_discount_fee  = $this->feediscount_model->getStudentFeesDiscount($id);

        $data['transport_fees']         = $transport_fees;
        $data['student_discount_fee']   = $student_discount_fee;
        $data['student_due_fee']        = $student_due_fee;
        $category                       = $this->category_model->get();
        $data['categorylist']           = $category;
        $class_section                  = $this->student_model->getClassSection($student["class_id"]);
        $data["class_section"]          = $class_section;
        $session                        = $this->setting_model->getCurrentSession();
        $studentlistbysection           = $this->student_model->getStudentClassSection($student["class_id"], $session);
        $data["studentlistbysection"]   = $studentlistbysection;
        $student_processing_fee         = $this->studentfeemaster_model->getStudentProcessingFees($id);
        $data['student_processing_fee'] = false;

        foreach ($student_processing_fee as $key => $processing_value) {
            if (!empty($processing_value->fees)) {
                $data['student_processing_fee'] = true;
            }
        }
        //required for fee 

       // $fee = $this->getstudentfeeOnly($id);
        // echo json_encode($data);
         return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Fee Details",
                        'data' => $data
                    ]));

    }

    public function classtimetable(){

      $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $this->loginThoughID($id);

        $this->session->set_userdata('top_menu', 'Academics');
        $this->session->set_userdata('sub_menu', 'Academics/timetable');
        $session                 = $this->setting_model->getCurrentSession();
        $data['title']           = 'Exam Schedule';
        $data['subject_id']      = "";
        $data['class_id']        = "";
        $data['section_id']      = "";
        $exam                    = $this->exam_model->get();
        $class                   = $this->class_model->get('', $classteacher = 'yes');
        $data['examlist']        = $exam;
        $data['classlist']       = $class;
        $userdata                = $this->customlib->getUserData();
        $staff                   = $this->staff_model->getStaffbyrole(2);
        $data['staff']           = $staff;
        $data['subject']         = array();

        $this->form_validation->set_rules('class_id', $this->lang->line('class'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('section_id', $this->lang->line('section'), 'trim|required|xss_clean');

        if ($this->form_validation->run() == true) {
            
                $class_id    = $this->input->post('class_id');
                $section_id  = $this->input->post('section_id');
                $days        = $this->customlib->getDaysname();
                $days_record = array();
                foreach ($days as $day_key => $day_value) {
                    $class_id              = $this->input->post('class_id');
                    $section_id            = $this->input->post('section_id');
                    $days_record[$day_key] = $this->subjecttimetable_model->getSubjectByClassandSectionDay($class_id, $section_id, $day_key);
                }

                $data['timetable'] = $days_record;

                 return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Class time table",
                        'data' => $data
                    ]));


               // echo json_encode($data);
            
        }else{
            return $this->output->set_output(json_encode([
                        'status' => false,
                        'success_message' => "Select Class & Section",
                        'data' => []
                    ]));
        }
        
    }
    public function teacherlist(){
        $staff_list         = $this->staff_model->getEmployee('2');
        $data['staff_list'] = $staff_list;
        $is_admin           = true;

        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Teacher List",
                        'data' => $data
                    ]));

    }
    public function teacherTimetable(){

        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $this->loginThoughID($id);


        $data['title'] = 'My Timetable';
        $this->session->set_userdata('top_menu', 'Academics');
        $this->session->set_userdata('sub_menu', 'Academics/timetable/mytimetable');
        $my_role  = $this->customlib->getStaffRole();
        $role     = json_decode($my_role);
        $is_admin = false;

        if ($role->id != "2") {
            $staff_list         = $this->staff_model->getEmployee('2');
            $data['staff_list'] = $staff_list;
            $is_admin           = true;
        }

        $staff_id          =  $this->input->post('  ', TRUE);//$this->customlib->getStaffID();
        $data['timetable'] = array();
        $days              = $this->customlib->getDaysname();

        foreach ($days as $day_key => $day_value) {
            $data['timetable'][$day_value] = $this->subjecttimetable_model->getByStaffandDay($staff_id, $day_key);
        }

        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Teacher List",
                        'data' => $data
                    ]));

    }
    public function memberstudent(){

        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $this->loginThoughID($id);
        $class       = $this->input->post('class_id',TRUE);
            $section     = $this->input->post('section_id',TRUE);
            $search      = $this->input->post('search',TRUE);
            $search_text = $this->input->post('search_text',TRUE);
            $search = $search ?? 'search_filter';
            if (isset($search)) {
                if ($search == 'search_filter') {
                    $this->form_validation->set_rules('class_id', $this->lang->line('class'), 'trim|required|xss_clean');
                   
                        $data['searchby']    = "filter";
                        $data['class_id']    = $this->input->post('class_id');
                        $data['section_id']  = $this->input->post('section_id');
                        $data['search_text'] = $this->input->post('search_text');
                        $resultlist          = $this->student_model->searchLibraryStudent($class, $section);
                        $data['resultlist'] = $resultlist;
                    
                } else if ($search == 'search_full') {

                        $data['searchby']    = "text";
                        $data['class_id']    = $this->input->post('class_id');
                        $data['section_id']  = $this->input->post('section_id');
                        $data['search_text'] = trim($this->input->post('search_text'));
                        $resultlist          = $this->student_model->searchFullText($search_text);
                        $data['resultlist']  = $resultlist;
                }


            }

            return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Member Student List",
                        'data' => $data
                    ]));

    }

    public function memberteacher(){

        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $this->loginThoughID($id);

        $data['teacherlist'] = $this->teacher_model->getLibraryTeacher(); 
        $data['genderList'] = $this->customlib->getGender(); 
        
        return $this->output->set_output(json_encode([
                    'status' => true,
                    'success_message' => "Member Student List",
                    'data' => $data
                ]));
    }

    public function disablestudentslist()
    {
         $this->output->set_content_type('application/json');
        // if (!$this->rbac->hasPrivilege('disable_student', 'can_view')) {
        //     access_denied();
        // }

        // $this->session->set_userdata('top_menu', 'Student Information');
        // $this->session->set_userdata('sub_menu', 'student/disablestudentslist');
        $class                   = $this->class_model->get();
        $data['classlist']       = $class;
        $data["resultlist"]      = array();
        $data['adm_auto_insert'] = $this->sch_setting_detail->adm_auto_insert;
        $data['sch_setting']     = $this->sch_setting_detail;
        $userdata                = $this->customlib->getUserData();
        $carray                  = array();
        $reason_list             = array();
        if (!empty($data["classlist"])) {
            foreach ($data["classlist"] as $ckey => $cvalue) {

                $carray[] = $cvalue["id"];
            }
        }

        $button = $this->input->post('search',true);

        // if ($this->input->server('REQUEST_METHOD') == "GET") {
        // } else {

            $class       = $this->input->post('class_id',true);
            $section     = $this->input->post('section_id',true);
            $search      = $this->input->post('search',true);
            $search_text = $this->input->post('search_text',true);
            if (isset($search)) {
                if ($search == 'search_filter') {
                    $this->form_validation->set_rules('class_id', $this->lang->line('class'), 'trim|required|xss_clean');
                    if ($this->form_validation->run() == false) {
                    } else {
                        $data['searchby']   = "filter";
                        $data['class_id']   = $this->input->post('class_id',true);
                        $data['section_id'] = $this->input->post('section_id',true);

                        $data['search_text'] = $this->input->post('search_text',true);
                        $resultlist          = $this->student_model->disablestudentByClassSection($class, $section);
                        $data['resultlist']  = $resultlist;
                    }
                } else if ($search == 'search_full') {
                    $data['searchby'] = "text";

                    $data['search_text'] = trim($this->input->post('search_text',true));
                    $resultlist          = $this->student_model->disablestudentFullText($search_text);
                    $data['resultlist']  = $resultlist;
                }
            }
        // }

        $disable_reason = $this->disable_reason_model->get();

        foreach ($disable_reason as $key => $value) {
            $id               = $value['id'];
            $reason_list[$id] = $value;
        }

        $data['disable_reason'] = $reason_list;

        return $this->output->set_output(json_encode([
                    'status' => true,
                    'success_message' => "Disable Students List",
                    'data' => $data
                ]));

        // $this->load->view("layout/header", $data);
        // $this->load->view("student/disablestudents", $data);
        // $this->load->view("layout/footer", $data);
    }
    
     public function create()
    {       
        $this->output->set_content_type('application/json');

        // Get request data from POST or JSON
        $postData = $this->input->post();
        if (empty($postData)) {
            $postData = json_decode(file_get_contents('php://input'), true);

            if (!empty($postData)) {
                $_POST = $postData; // populate POST for existing code
            }
        }
        $user_id      = $_POST['user_id'];
        

        if(!$user_id){
            return $this->output
                ->set_content_type('application/json')
                ->set_output(json_encode([
                    'status' => false,
                    'message' => 'Validation failed User ID',
                    'errors' => []
                ]));
        }   
        $user = $this->db->where('id', $user_id)->get('users')->row();
        if(!$user){
            return $this->output
                ->set_content_type('application/json')
                ->set_output(json_encode([
                    'status' => false,
                    'message' => 'Validation failed User Information',
                    'errors' => []
                ]));
        }

       // $this->locallogin($user->username,$user->password);

        
       
       // $this->form_validation->set_rules('file', $this->lang->line('image'), 'callback_handle_upload[file]');

        //$this->form_validation->set_rules('first_doc', $this->lang->line('image'), 'callback_handle_uploadfordoc[first_doc]');
        //$this->form_validation->set_rules('second_doc', $this->lang->line('image'), 'callback_handle_uploadfordoc[second_doc]');
        //$this->form_validation->set_rules('fourth_doc', $this->lang->line('image'), 'callback_handle_uploadfordoc[fourth_doc]');
        //$this->form_validation->set_rules('fifth_doc', $this->lang->line('image'), 'callback_handle_uploadfordoc[fifth_doc]');
        $this->form_validation->set_rules('firstname', $this->lang->line('first_name'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('gender', $this->lang->line('gender'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('dob', $this->lang->line('date_of_birth'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('class_id', $this->lang->line('class'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('section_id', $this->lang->line('section'), 'trim|required|xss_clean');

        if ($this->sch_setting_detail->guardian_name) {
            $this->form_validation->set_rules('guardian_name', $this->lang->line('guardian_name'), 'trim|required|xss_clean');
            $this->form_validation->set_rules('guardian_is', $this->lang->line('guardian'), 'trim|required|xss_clean');
        }

        if ($this->sch_setting_detail->guardian_phone) {
            $this->form_validation->set_rules('guardian_phone', $this->lang->line('guardian_phone'), 'trim|required|xss_clean');
        }

        $this->form_validation->set_rules(
            'email',
            $this->lang->line('email'),
            array(
                'valid_email',
                array('check_student_email_exists', array($this->student_model, 'check_student_email_exists')),
            )
        );

        $this->form_validation->set_rules(
            'mobileno',
            $this->lang->line('mobile_no'),
            array(
                'xss_clean',
                array('check_student_mobile_exists', array($this->student_model, 'check_student_mobile_no_exists')),
            )
        );

        $sibling_id         = $this->input->post('sibling_id');
        if ($sibling_id > 0) {
        } else {
            $this->form_validation->set_rules(
                'guardian_email',
                $this->lang->line('guardian_email'),
                array(
                    'valid_email',
                    array('check_guardian_email_exists', array($this->student_model, 'check_guardian_email_exists')),
                )
            );
        }

        if (!$this->sch_setting_detail->adm_auto_insert) {
            $this->form_validation->set_rules('admission_no', $this->lang->line('admission_no'), 'trim|required|xss_clean|is_unique[students.admission_no]');
        }

        $transport_feemaster_id = $this->input->post('transport_feemaster_id');
        if (!empty($transport_feemaster_id)) {
            $this->form_validation->set_rules('vehroute_id', $this->lang->line('route_list'), 'trim|required|xss_clean');
            $this->form_validation->set_rules('route_pickup_point_id', $this->lang->line('pickup_point'), 'trim|required|xss_clean');
            $this->form_validation->set_rules('transport_feemaster_id[]', $this->lang->line('fees_month'), 'trim|required|xss_clean');
        }

        if ($this->form_validation->run() == false) {

            return $this->output
                ->set_content_type('application/json')
                ->set_output(json_encode([
                    'status' => false,
                    'message' => 'Validation failed',
                    'errors' => validation_errors()
                ]));
        } else {
			
			// try {
				
                // $saas_response=$this->saasvalidation->updateResouceQuota('no_of_student', 1);
				// if($saas_response){			
		
					$custom_field_post  = $this->input->post("custom_fields[students]");
					$custom_value_array = array();
					if (!empty($custom_field_post)) {
		
						foreach ($custom_field_post as $key => $value) {
							$check_field_type = $this->input->post("custom_fields[students][" . $key . "]");
							$field_value      = is_array($check_field_type) ? implode(",", $check_field_type) : $check_field_type;
							$array_custom     = array(
								'belong_table_id' => 0,
								'custom_field_id' => $key,
								'field_value'     => $field_value,
							);
							$custom_value_array[] = $array_custom;
						}
					}

					$class_id              = $this->input->post('class_id');
					$section_id            = $this->input->post('section_id');
					$fees_discount         = $this->input->post('fees_discount');
					$route_pickup_point_id = $this->input->post('route_pickup_point_id');
					$vehroute_id           = $this->input->post('vehroute_id');
					
					if (empty($vehroute_id)) {
						$vehroute_id = null;
					}
					$hostel_room_id = $this->input->post('hostel_room_id');
		
					if (empty($route_pickup_point_id)) {
						$route_pickup_point_id = null;
					}
		
					if (empty($hostel_room_id)) {
						$hostel_room_id = 0;
					}

					$data_insert = array(
						'firstname'         => $this->input->post('firstname'),
                        'pen'         => $this->input->post('pen'),
                        'rfid'         => $this->input->post('rfid'),
						'rte'               => $this->input->post('rte'),
						'state'             => $this->input->post('state'),
						'city'              => $this->input->post('city'),
						'pincode'           => $this->input->post('pincode'),
						'cast'              => $this->input->post('cast'),
						'previous_school'   => $this->input->post('previous_school'),
						'dob'               => $this->customlib->dateFormatToYYYYMMDD($this->input->post('dob')),
						'current_address'   => $this->input->post('current_address'),
						'permanent_address' => $this->input->post('permanent_address'),
						'adhar_no'          => $this->input->post('adhar_no'),
						'samagra_id'        => $this->input->post('samagra_id'),
						'bank_account_no'   => $this->input->post('bank_account_no'),
						'bank_name'         => $this->input->post('bank_name'),
						'ifsc_code'         => $this->input->post('ifsc_code'),
						'guardian_email'    => $this->input->post('guardian_email'),
						'gender'            => $this->input->post('gender'),
						'guardian_name'     => $this->input->post('guardian_name'),
						'guardian_relation' => $this->input->post('guardian_relation'),
						'guardian_phone'    => $this->input->post('guardian_phone'),
						'guardian_address'  => $this->input->post('guardian_address'),
						'hostel_room_id'    => $hostel_room_id,
						'note'              => $this->input->post('note'),
						'is_active'         => 'yes',
					);
		
					if ($this->sch_setting_detail->guardian_occupation) {
						$data_insert['guardian_occupation'] = $this->input->post('guardian_occupation');
					}

					$house             = $this->input->post('house');
					$blood_group       = $this->input->post('blood_group');
					$measurement_date  = $this->input->post('measure_date');
					$roll_no           = $this->input->post('roll_no');
					$lastname          = $this->input->post('lastname');
					$middlename        = $this->input->post('middlename');
					$category_id       = $this->input->post('category_id');
					$religion          = $this->input->post('religion');
					$mobileno          = $this->input->post('mobileno');
					$email             = $this->input->post('email');
					$admission_date    = $this->input->post('admission_date');
					$height            = $this->input->post('height');
					$weight            = $this->input->post('weight');
					$father_name       = $this->input->post('father_name');
					$father_phone      = $this->input->post('father_phone');
					$father_occupation = $this->input->post('father_occupation');
					$mother_name       = $this->input->post('mother_name');
					$mother_phone      = $this->input->post('mother_phone');
					$mother_occupation = $this->input->post('mother_occupation');

					if ($this->sch_setting_detail->guardian_name) {
						$data_insert['guardian_is'] = $this->input->post('guardian_is');
					}
					if (isset($measurement_date)) {
						$data_insert['measurement_date'] = $this->customlib->dateFormatToYYYYMMDD($this->input->post('measure_date'));
					}
					if (isset($house)) {
						$data_insert['school_house_id'] = $this->input->post('house');
					}else{
                        $data_insert['school_house_id'] = 1;
                    }
					if (isset($blood_group)) {
						$data_insert['blood_group'] = $this->input->post('blood_group');
					}
					if (isset($roll_no)) {
						$data_insert['roll_no'] = $this->input->post('roll_no');
					}
					if (isset($lastname)) {
						$data_insert['lastname'] = $this->input->post('lastname');
					}
					if (isset($middlename)) {
						$data_insert['middlename'] = $this->input->post('middlename');
					}
					if (isset($category_id)) {
						$data_insert['category_id'] = $this->input->post('category_id');
					}
					if (isset($religion)) {
						$data_insert['religion'] = $this->input->post('religion');
					}
					if (isset($mobileno)) {
						$data_insert['mobileno'] = $this->input->post('mobileno');
					}
					if (isset($email)) {
						$data_insert['email'] = $this->input->post('email');
					}
					if (isset($admission_date)) {
						$data_insert['admission_date'] = $this->customlib->dateFormatToYYYYMMDD($this->input->post('admission_date'));
					}
					if (isset($height)) {
						$data_insert['height'] = $this->input->post('height');
					}
					if (isset($weight)) {
						$data_insert['weight'] = $this->input->post('weight');
					}
					if (isset($father_name)) {
						$data_insert['father_name'] = $this->input->post('father_name');
					}
					if (isset($father_phone)) {
						$data_insert['father_phone'] = $this->input->post('father_phone');
					}
					if (isset($father_occupation)) {
						$data_insert['father_occupation'] = $this->input->post('father_occupation');
					}
					if (isset($mother_name)) {
						$data_insert['mother_name'] = $this->input->post('mother_name');
					}
					if (isset($mother_phone)) {
						$data_insert['mother_phone'] = $this->input->post('mother_phone');
					}
					if (isset($mother_occupation)) {
						$data_insert['mother_occupation'] = $this->input->post('mother_occupation');
					}
		
					$fee_session_group_id = $this->input->post('fee_session_group_id');
		
					$insert                            = true;
					$data_setting                      = array();
					$data_setting['id']                = $this->sch_setting_detail->id;
					$data_setting['adm_auto_insert']   = $this->sch_setting_detail->adm_auto_insert;
					$data_setting['adm_update_status'] = $this->sch_setting_detail->adm_update_status;
					$admission_no                      = 0;
		
					if ($this->sch_setting_detail->adm_auto_insert) {
						if ($this->sch_setting_detail->adm_update_status) {
		
							$admission_no = $this->sch_setting_detail->adm_prefix . $this->sch_setting_detail->adm_start_from;
		
							$last_student = $this->student_model->lastRecord();
							if (!empty($last_student)) {
		
								$last_admission_digit = str_replace($this->sch_setting_detail->adm_prefix, "", $last_student->admission_no);
		
								$admission_no                = $this->sch_setting_detail->adm_prefix . sprintf("%0" . $this->sch_setting_detail->adm_no_digit . "d", $last_admission_digit + 1);
								$data_insert['admission_no'] = $admission_no;
							} else {
								$admission_no                = $this->sch_setting_detail->adm_prefix . $this->sch_setting_detail->adm_start_from;
								$data_insert['admission_no'] = $admission_no;
							}
						} else {
							$admission_no                = $this->sch_setting_detail->adm_prefix . $this->sch_setting_detail->adm_start_from;
							$data_insert['admission_no'] = $admission_no;
						}
		
						$admission_no_exists = $this->student_model->check_adm_exists($admission_no);
						if ($admission_no_exists) {
							$insert = false;
						}
					} else {
						$data_insert['admission_no'] = $this->input->post('admission_no');
					}

					if (empty($_FILES["file"])) {
						if ($this->input->post('gender') == 'Female') {
							$data_insert['image'] = 'uploads/student_images/default_female.jpg';
						} else {
							$data_insert['image'] = 'uploads/student_images/default_male.jpg';
						}
					}

					if (isset($_FILES["file"]) && !empty($_FILES['file']['name'])) {
						$img_name             = $this->media_storage->fileupload("file", "./uploads/student_images/");
						$data_insert['image'] = "uploads/student_images/" . $img_name;
					}
		
					if (isset($_FILES["father_pic"]) && !empty($_FILES['father_pic']['name'])) {
						$img_name                  = $this->media_storage->fileupload("father_pic", "./uploads/student_images/");
						$data_insert['father_pic'] = "uploads/student_images/" . $img_name;
					}
		
					if (isset($_FILES["mother_pic"]) && !empty($_FILES['mother_pic']['name'])) {
						$img_name                  = $this->media_storage->fileupload("mother_pic", "./uploads/student_images/");
						$data_insert['mother_pic'] = "uploads/student_images/" . $img_name;
					}
		
					if (isset($_FILES["guardian_pic"]) && !empty($_FILES['guardian_pic']['name'])) {
						$img_name                    = $this->media_storage->fileupload("guardian_pic", "./uploads/student_images/");
						$data_insert['guardian_pic'] = "uploads/student_images/" . $img_name;
					}
                   


					if ($insert) {
                        $data_insert['created_by'] = $user_id;//$this->session->userdata['admin']['id'];

						$insert_id = $this->student_model->add($data_insert, $data_setting);
                        
                        
						if (!empty($custom_value_array)) {
							$this->customfield_model->insertRecord($custom_value_array, $insert_id);
						}

						$data_new = array(
							'student_id'            => $insert_id,
							'class_id'              => $class_id,
							'section_id'            => $section_id,
							'session_id'            => $session,
							'fees_discount'         => $fees_discount,
							'route_pickup_point_id' => $route_pickup_point_id,
							'vehroute_id'           => $vehroute_id,
						);
                       
						$student_session_id     = $this->student_model->add_student_session($data_new);
						$transport_feemaster_id = $this->input->post('transport_feemaster_id');
		
						if ($fee_session_group_id) {
							$this->studentfeemaster_model->assign_bulk_fees($fee_session_group_id, $student_session_id, array());
						}
		
						//*** assign fees discount ***//
						$discount_id = $this->input->post('discount_id[]');
						if (!empty($discount_id)) {
							foreach ($discount_id as $key => $value) {
								$insert_array = array(
									'student_session_id' => $student_session_id,
									'fees_discount_id'   => $value,
								);
								$this->feediscount_model->allotdiscount($insert_array);
							}
						}
						//*** assign fees discount ***//

						if (!empty($transport_feemaster_id)) {
							$trns_data_insert = array();
							foreach ($transport_feemaster_id as $transport_feemaster_key => $transport_feemaster_value) {
								$trns_data_insert[] = array(
									'student_session_id'     => $student_session_id,
									'route_pickup_point_id'  => $route_pickup_point_id,
									'transport_feemaster_id' => $transport_feemaster_value,
								);
							}
		
							$student_session_is = $this->studenttransportfee_model->add($trns_data_insert, $student_session_id, array(), $route_pickup_point_id);
						}

						$user_password = $this->role->get_random_password($chars_min = 6, $chars_max = 6, $use_upper_case = false, $include_numbers = true, $include_special_chars = false);
		
						$sibling_id         = $this->input->post('sibling_id');
						$data_student_login = array(
							'username' => $this->student_login_prefix . $insert_id,
							'password' => $user_password,
							'user_id'  => $insert_id,
							'role'     => 'student',
							'lang_id'  => $this->sch_setting_detail->lang_id,
						);
		
						$this->user_model->add($data_student_login);

						if ($sibling_id > 0) {
							$student_sibling = $this->student_model->get($sibling_id);
							$update_student  = array(
								'id'        => $insert_id,
								'parent_id' => $student_sibling['parent_id'],
							);
							$student_sibling = $this->student_model->add($update_student);
						} else {
							$parent_password   = $this->role->get_random_password($chars_min = 6, $chars_max = 6, $use_upper_case = false, $include_numbers = true, $include_special_chars = false);
							$temp              = $insert_id;
							$data_parent_login = array(
								'username' => $this->parent_login_prefix . $insert_id,
								'password' => $parent_password,
								'user_id'  => 0,
								'role'     => 'parent',
								'childs'   => $temp,
							);
							$ins_parent_id  = $this->user_model->add($data_parent_login);
							$update_student = array(
								'id'        => $insert_id,
								'parent_id' => $ins_parent_id,
							);
							$this->student_model->add($update_student);
						}

						$upload_dir_path  = $this->customlib->getFolderPath() . './uploads/student_documents/' . $insert_id . '/';
						$upload_directory = './uploads/student_documents/' . $insert_id . '/';
						if (!is_dir($upload_dir_path) && !mkdir($upload_dir_path)) {
							die("Error creating folder $upload_dir_path");
						}

						if (isset($_FILES["first_doc"]) && !empty($_FILES['first_doc']['name'])) {
		
							$first_title = $this->input->post('first_title');
							$imp         = $this->media_storage->fileupload("first_doc", $upload_directory);
							$data_img    = array('student_id' => $insert_id, 'title' => $first_title, 'doc' => $imp);
							$this->student_model->adddoc($data_img);
						}
		
						if (isset($_FILES["second_doc"]) && !empty($_FILES['second_doc']['name'])) {
							$second_title = $this->input->post('second_title');
							$imp          = $this->media_storage->fileupload("second_doc", $upload_directory);
							$data_img     = array('student_id' => $insert_id, 'title' => $second_title, 'doc' => $imp);
							$this->student_model->adddoc($data_img);
						}
		
						if (isset($_FILES["fourth_doc"]) && !empty($_FILES['fourth_doc']['name'])) {
							$fourth_title = $this->input->post('fourth_title');
							$imp          = $this->media_storage->fileupload("fourth_doc", $upload_directory);
							$data_img     = array('student_id' => $insert_id, 'title' => $fourth_title, 'doc' => $imp);
							$this->student_model->adddoc($data_img);
						}
		
						if (isset($_FILES["fifth_doc"]) && !empty($_FILES['fifth_doc']['name'])) {
							$fifth_title = $this->input->post('fifth_title');
							$imp         = $this->media_storage->fileupload("fifth_doc", $upload_directory);
							$data_img    = array('student_id' => $insert_id, 'title' => $fifth_title, 'doc' => $imp);
							$this->student_model->adddoc($data_img);
						}

						$sender_details = array('student_id' => $insert_id, 'student_phone' => $this->input->post('mobileno'), 'guardian_phone' => $this->input->post('guardian_phone'), 'student_email' => $this->input->post('email'), 'guardian_email' => $this->input->post('guardian_email'), 'student_session_id' => $student_session_id);
		
						$this->mailsmsconf->mailsms('student_admission', $sender_details);
                        $studentusername = $this->student_login_prefix . $insert_id;
						$student_login_detail = array('id' => $insert_id, 'credential_for' => 'student', 'first_name' => $this->input->post('firstname'), 'last_name' => $this->input->post('lastname'), 'username' => $studentusername, 'password' => $user_password, 'contact_no' => $this->input->post('mobileno'), 'email' => $this->input->post('email'), 'admission_no' => $data_insert['admission_no'], 'student_session_id' => $student_session_id);
		
						$this->mailsmsconf->mailsms('student_login_credential', $student_login_detail);

						if ($sibling_id > 0) {
						} else {
                            $parentusername = $this->parent_login_prefix . $insert_id;
							$parent_login_detail = array('id' => $insert_id, 'credential_for' => 'parent', 'username' => $parentusername, 'password' => $parent_password, 'contact_no' => $this->input->post('guardian_phone'), 'email' => $this->input->post('guardian_email'), 'admission_no' => $data_insert['admission_no'], 'student_session_id' => $student_session_id);
							$this->mailsmsconf->mailsms('student_login_credential', $parent_login_detail);
						}
		
						//generate student id card
						$student_details  = $this->student_model->get($insert_id);
						$scan_type = $this->sch_setting_detail->scan_code_type;
						$this->customlib->generatebarcode($student_details['admission_no'], $student_details['id'], $scan_type);
						//generate student id card

                        //send SMS By Puru 25/11/25

                            $schoolName = "Edu Feez";
                            $studentName = $this->input->post('firstname');
                            if($this->input->post('lastname')){
                                $studentName = $studentName." ".$this->input->post('lastname');
                            }
                          //  $mobile = $this->input->post('father_phone') ?? $this->input->post('mother_phone') ?? $this->input->post('mobileno');
                            
                          $mobile = array_filter([
                                    $this->input->post('guardian_phone'),
                                    $this->input->post('father_phone'),
                                    $this->input->post('mother_phone'),
                                    $this->input->post('mobileno')
                                ])[0] ?? null;

                               
                          if($mobile){

                            //SMS here Implement
                           // $message = "Welcome to $schoolName. Your child $studentName has been successfully registered on EduFeez. 1st Edu OS platform in India. Team EduFeez";
                           $Class = @$student_details['class'];
                            $message = "Welcome to $schoolName.
$studentName is successfully registered in Class {$Class}.
1st Edu-OS platform in India.
EduFeez";
                            // Encode the message for URL safety
                            $message = urlencode($message);

                            $url = "http://s2.bulksms7.com/api/mt/SendSMS"
                                . "?user=edufiz@1"
                                . "&password=edufiz@1"
                                . "&senderid=EDUFZL"
                                . "&channel=Trans"
                                . "&DCS=0"
                                . "&flashsms=0"
                                . "&number=$mobile"
                                . "&text=$message"
                                . "&route=4"
                               // . "&DLTTemplateId=1707176191446302454"
                                . "&DLTTemplateId=1707177097727372883"
                                
                                . "&PEID=1701176165143520921";

                            // Run directly
                            $response = file_get_contents($url);

                            //send Login Details 
                             $baseurl = base_url();
                            if(@$studentusername && @$user_password){
                                // $message = "Edufeez: Student login created. User ID: ".$studentusername." Password: ".$user_password." Login: ".$baseurl;
                                $message = "Personalized Access
Access your marks, attendance & fee details.
Secure communication with school.

Student login created for $schoolName
User ID: $studentusername Password: $user_password
App: N/A Web: $baseurl
Powered by EduFeez";
                            // Encode the message for URL safety
                                $message = urlencode($message);

                                $url = "http://s2.bulksms7.com/api/mt/SendSMS"
                                    . "?user=edufiz@1"
                                    . "&password=edufiz@1"
                                    . "&senderid=EDUFZL"
                                    . "&channel=Trans"
                                    . "&DCS=0"
                                    . "&flashsms=0"
                                    . "&number=$mobile"
                                    . "&text=$message"
                                    . "&route=4"
                                    . "&DLTTemplateId=1707177105179397410"
                                    . "&PEID=1701176165143520921";

                                }

                               

                             $response = file_get_contents($url);
                            }

                            if(@$parentusername && @$parent_password){
                                $dy = "Parent";
                               // $url = $baseurl;
                                 //$message = "Edufeez: Parent login created for ".$schoolName.". User ID: ".$parentusername." Password: ".$parent_password." Login: ".$baseurl;
                                $message = "Personalized Access & Communication Access individual marks, attendance, and fee details. Secure school–parent communication enabled.
Parent login created for $schoolName
User ID: $parentusername Password: $parent_password
App: N/A
Web: $baseurl
Powered by EduFeez";
                                 // Encode the message for URL safety
                                $message = urlencode($message);
                                $url = "http://s2.bulksms7.com/api/mt/SendSMS"
                                    . "?user=edufiz@1"
                                    . "&password=edufiz@1"
                                    . "&senderid=EDUFZL"
                                    . "&channel=Trans"
                                    . "&DCS=0"
                                    . "&flashsms=0"
                                    . "&number=$mobile"
                                    . "&text=$message"
                                    . "&route=4"
                                    . "&DLTTemplateId=1707177105167193588"
                                    . "&PEID=1701176165143520921";

                                   

                             
                                    $response = file_get_contents($url);
                                }
                           
                           

                           
                        //send SMS end
                        return $this->output->set_output(json_encode([
                                'status' => true,
                                'success_message' => "Success",
                                'data' => []
                            ]));

					} else {
		
						$data['error_message'] = $this->lang->line('admission_no') . ' ' . $admission_no . ' ' . $this->lang->line('already_exists');
					 return $this->output->set_output(json_encode([
                                'status' => false,
                                'success_message' => "Error",
                                'data' => $data
                            ]));
					}
				// }
				 
			// } catch (Exception $e) {
					  // Print the exception message for debugging or logging purposes
						// echo 'Error: ' . $e->getMessage();
			  
			// }
        }
    }

}

    

