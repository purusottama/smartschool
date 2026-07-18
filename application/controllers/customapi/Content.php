<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Content extends MY_Controller
{


public $sch_setting_detail = array();

    public function __construct()
    {
        parent::__construct();
        $this->load->library('Enc_lib');
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
        $this->load->model(array("timeline_model", "student_edit_field_model", 'transportfee_model', 'marksdivision_model', 'module_model',"classteacher_model",'class_section_time_model','studentAttendaceSetting_model','book_model','subjectgroup_model','lessonplan_model','sharecontent_model','contenttype_model'));
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

    public function getsharelist(){

        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

        $role_array = json_decode($this->customlib->getStaffRole());
        $role       = $role_array->id;
        if ($role == 7) {

            $m = $this->sharecontent_model->getsharelist();
        } else {

            $m = $this->sharecontent_model->getOtherStaffsharelist($role, $this->customlib->getStaffID());
        }
        $m = json_decode($m);

        $dt_data = array();
        if (!empty($m->data)) {
            foreach ($m->data as $key => $value) {

                $editbtn    = '';
                $deletebtn  = '';
                $share_link = '';

                $title = $value->title;

                $row   = array();
                $row[] = $title;

                if ($value->send_to == "public") {
                    $url_key         = $this->enc_lib->encrypt($value->id);
                    $shared_url_link = $this->customlib->getBaseUrl().'site/share/' . $url_key;

                    $share_link = "<button type='button' class='btn btn-default btn-xs' data-recordid=" . $value->id . " data-link=" . $shared_url_link . " data-toggle='modal' data-target='#linkModal' title=" . $this->lang->line('link') . " ><i class='fa fa-link'></i></button>";
                }

                $editbtn = "<button type='button' class='btn btn-default btn-xs' data-recordid=" . $value->id . " data-toggle='modal' data-target='#viewShareModal' title=" . $this->lang->line('view') . " ><i class='fa fa-eye'></i></button>";
                
                // if ($this->rbac->hasPrivilege('content_share_list', 'can_delete')) {
                //     $deletebtn = "<a onclick='return confirm(" . '"' . $this->lang->line('delete_confirm') . '"' . "  )' href='" . base_url() . "admin/content/delete_content/" . $value->id . "' class='btn btn-default btn-xs' title='" . $this->lang->line('delete') . "' data-toggle='tooltip'><i class='fa fa-trash'></i></a>";
                // }else{
                //     $deletebtn = "";
                // }
                
                $row[] = $this->lang->line($value->send_to);
                $row[] = $this->customlib->dateformat($value->share_date);
                $row[] = $this->customlib->dateformat($value->valid_upto);
                $row[] = $this->customlib->getStaffFullName($value->name, $value->surname, $value->employee_id);
                if ($value->description == "") {
                    $row[] = $this->lang->line('no_description');
                } else {
                    $row[] = $value->description;
                }
                //$row[]     = $share_link . ' ' . $editbtn . ' ' . $deletebtn;
                $dt_data[] = $row;
            }
        }

        $json_data = array(
            "draw"            => intval($m->draw),
            "recordsTotal"    => intval($m->recordsTotal),
            "recordsFiltered" => intval($m->recordsFiltered),
            "data"            => $dt_data,
        );

        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Teacher Wkly sylabus",
                        'data' => $json_data
                    ]));
        
    }
    public function getcontenttypelist(){
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

        $m = $this->contenttype_model->getcontenttypelist();
        $m = json_decode($m);

        $dt_data = array();
        if (!empty($m->data)) {
            foreach ($m->data as $key => $value) {
                $editbtn   = '';
                $deletebtn = '';
                $documents = '';

                // if ($this->rbac->hasPrivilege('content_type', 'can_edit')) {
                //     $editbtn = "<a href='" . base_url() . "admin/contenttype/edit/" . $value->id . "'   class='btn btn-default btn-xs'  data-toggle='tooltip' title='" . $this->lang->line('edit') . "'><i class='fa fa-pencil'></i></a>";
                // }
                // if ($this->rbac->hasPrivilege('content_type', 'can_delete')) {
                //     $deletebtn = '';
                //     $deletebtn = "<a onclick='return confirm(" . '"' . $this->lang->line('delete_confirm') . '"' . ");' href='" . base_url() . "admin/contenttype/delete/" . $value->id . "' class='btn btn-default btn-xs' title='" . $this->lang->line('delete') . "' data-toggle='tooltip'><i class='fa fa-trash'></i></a>";
                // }

                $row   = array();
                $row[] = $value->name;

                if ($value->description == "") {
                    $row[] = $this->lang->line('no_description');
                } else {
                    $row[] = $value->description;
                }

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

        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Teacher Wkly sylabus",
                        'data' => $json_data
                    ]));

    }
   
    
}

    

