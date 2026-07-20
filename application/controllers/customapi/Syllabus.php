<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Syllabus extends MY_Controller
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
         $this->load->model("holiday_model");
        $this->load->library('customlib');
        $this->load->model(array("timeline_model", "student_edit_field_model", 'transportfee_model', 'marksdivision_model', 'module_model',"classteacher_model",'class_section_time_model','studentAttendaceSetting_model','book_model','subjectgroup_model','lessonplan_model'));
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


   

     public function get_weekdates()
    {
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

        $this_week_start         = $this->customlib->dateFormatToYYYYMMDD($date);
        $prev_week_start         = date("Y-m-d", strtotime('last ' . $this->start_weekday, strtotime($this_week_start)));
        $next_week_start         = date("Y-m-d", strtotime('next ' . $this->start_weekday, strtotime($this_week_start)));
        $this_week_end           = date("Y-m-d", strtotime($this_week_start . " +6 day"));
        $data['this_week_start'] = $this->customlib->dateformat($this_week_start);
        $data['this_week_end']   = $this->customlib->dateformat($this_week_end);
        $data['prev_week_start'] = $this->customlib->dateformat($prev_week_start);
        $data['next_week_start'] = $this->customlib->dateformat($next_week_start);
        $this->session->set_userdata('top_menu', 'Time_table');
        //$staff_id            = $_POST['staff_id'];
        $data['timetable']   = array();
        $days                = $this->customlib->getDaysname();
        $userdata            = $this->customlib->getUserData();
        $role_id             = $userdata["role_id"];
        $class_section_array = array();
        if (isset($role_id) && ($userdata["role_id"] == 2) && ($userdata["class_teacher"] == "yes")) {
            $my_class = $this->class_model->get();
            foreach ($my_class as $class_key => $class_value) {
                $section = $this->section_model->getClassBySection($class_value['id']);
                foreach ($section as $key => $value) {
                    $class_section_array[$class_value['id']][] = $value['section_id'];
                }
            }
        }

        foreach ($days as $day_key => $day_value) {
            $data['timetable'][$day_key] = $this->subjecttimetable_model->getSyllabussubject($staff_id, $day_key, $class_section_array);

        }

        $data['staff_id'] = $staff_id;
       return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Teacher Wkly sylabus",
                        'data' => $data
                    ]));
    }

    public function get_subject_syllabus()
    {
        $data['id']      = $_POST['id'];
        $staff_id        = $_POST['staff_id'];
        $my_role         = $this->customlib->getStaffRole();
        $role            = json_decode($my_role);
        $data['role_id'] = $role->id;
        $data['result'] = $this->syllabus_model->get_subject_syllabus($data, $staff_id);
        $data['result'] = $data['result'][0];

        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Subject syllabus loaded successfully.',
            'data' => $data,
        ]));
    }

    public function holiday(){
        
       $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

         $data['title']       	        =	$this->lang->line('select_criteria');
        $data["search_holiday_type"]	=	"";

        if (isset($_POST['search_holiday_type']) && $_POST['search_holiday_type'] != '') {
            $search_holiday_type            =   $_POST['search_holiday_type'];
			$data["search_holiday_type"]	=	$_POST['search_holiday_type'];
        }         
        $this->form_validation->set_rules('search_holiday_type', $this->lang->line('type'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) { 
            $holidaylist   =   $this->holiday_model->get(null,null);
        } else {
            $holidaylist   =   $this->holiday_model->get(null, $search_holiday_type);
        }

        $data["holidaylist"]  	         = $holidaylist; 
		$data['superadmin_restriction']  = $this->sch_setting_detail->superadmin_restriction;
		$getStaffRole                     = $this->customlib->getStaffRole();
        $data['staffrole']                = json_decode($getStaffRole);
		$data['login_staff_id']           = $this->customlib->getStaffID();
        $data['holiday_type']             = $this->holiday_model->get_holiday_type();

        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Holiday List",
                        'data' => $data
                    ]));


    }

    public function getallBooks(){
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

        $listbook = $this->book_model->getbooklist();
        $m               = json_decode($listbook);
        $currency_symbol = $this->customlib->getSchoolCurrencyFormat();
        $dt_data         = array();
        if (!empty($m->data)) {
            foreach ($m->data as $key => $value) {
                $editbtn   = '';
                $deletebtn = '';

                // if ($this->rbac->hasPrivilege('books', 'can_edit')) {
                //     $editbtn = "<a href='" . base_url() . "admin/book/edit/" . $value->id . "'   class='btn btn-default btn-xs'  data-toggle='tooltip' title='" . $this->lang->line('edit') . "'><i class='fa fa-pencil'></i></a>";
                // }

                // if ($this->rbac->hasPrivilege('books', 'can_delete')) {
                //     $deletebtn = "<a onclick='return confirm(" . '"' . $this->lang->line('delete_confirm') . '"' . "  )' href='" . base_url() . "admin/book/delete/" . $value->id . "' class='btn btn-default btn-xs' title='" . $this->lang->line('delete') . "' data-toggle='tooltip'><i class='fa fa-trash'></i></a>";
                // }

                $row   = array();
                $row[] = $value->book_title;
                if ($value->description == "") {
                    $row[] = $this->lang->line('no_description');
                } else {
                    $row[] = $value->description;
                }
                $row[]     = $value->book_no;
                $row[]     = $value->isbn_no;
                $row[]     = $value->publish;
                $row[]     = $value->author;
                $row[]     = $value->subject;
                $row[]     = $value->rack_no;
                $row[]     = $value->qty;
                $row[]     = $value->qty - $value->total_issue;
                $row[]     = $currency_symbol . amountFormat($value->perunitcost);
                $row[]     = $this->customlib->dateformat($value->postdate);
                //$row[]     = $editbtn . ' ' . $deletebtn;
                $dt_data[] = $row;
            }
        }

        $json_data = array(
            "draw"            => intval($m->draw),
            "recordsTotal"    => intval($m->recordsTotal),
            "recordsFiltered" => intval($m->recordsFiltered),
            "data"            => $dt_data,
        );
       // echo json_encode($json_data);


         $data['listbook']  = $json_data;

          return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Holiday List",
                        'data' => $data
                    ]));
    }

    public function getGroupByClassandSection()
    {
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

        $class_id   = $this->input->post('class_id',TRUE);
        $section_id = $this->input->post('section_id',TRUE);
        $session_id = $this->input->post('session_id',TRUE);
        if(!isset($session_id)){
            $session_id=NULL;
        }
        $data       = $this->subjectgroup_model->getGroupByClassandSection($class_id, $section_id,$session_id);
        //echo json_encode($data);
          return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => " getGroup By ClassandSection",
                        'data' => $data
                    ]));
    }
    public function getGroupsubjects()
    {
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

        $subject_group_id = $this->input->post('subject_group_id',TRUE);
         $session_id = $this->input->post('session_id',TRUE);
        if(!isset($session_id)){
            $session_id=NULL;
        }
        $data             = $this->subjectgroup_model->getGroupsubjects($subject_group_id,$session_id);      
        //echo json_encode($data);
        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => " get Group subjects",
                        'data' => $data
                    ]));
    }

    public function statusList(){
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

        $data['class_id']               = $class_id = $this->input->post('class_id', TRUE);// $_POST['class_id'];
        $data['section_id']             = $section_id = $this->input->post('section_id', TRUE);//$_POST['section_id'];
        $data['subject_group_id']       = $subject_group_id = $this->input->post('subject_group_id', TRUE);//$_POST['subject_group_id'];
        $data['subject_id']             = $subject_id = $this->input->post('subject_id', TRUE);//$_POST['subject_id'];
        $subject_details                = $this->lessonplan_model->get_subjectNameBySubjectGroupSubjectId($subject_id);
        $subject_group_class_sectionsId = $this->lessonplan_model->getsubject_group_class_sectionsId($class_id, $section_id, $subject_group_id);
        if ($subject_details['code'] == '') {
            $data['subject_name'] = $subject_details['name'];
        } else {
            $data['subject_name'] = $subject_details['name'] . " (" . $subject_details['code'] . ")";
        }
        $lessonlist        = $this->lessonplan_model->getlessonBysubjectid($subject_id, $subject_group_class_sectionsId['id']);
        $data['no_record'] = '1';
         $sch_current_session = $this->setting_model->getCurrentSession();
        foreach ($lessonlist as $key => $value) {
            $data['no_record']             = '2';
            $data['lessons'][$value['id']] = $value;
            $topics                        = $this->lessonplan_model->gettopicBylessonid($value['id'], $sch_current_session);
            foreach ($topics as $topic_key => $topic_value) {
                $data['lessons'][$value['id']]['topic'][] = $topic_value;
            }
        }

        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => " get Group subjects",
                        'data' => $data
                    ]));

    }
   
    
}

    

