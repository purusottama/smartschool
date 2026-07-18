<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Subject extends MY_Controller
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
        $this->load->model(array("timeline_model", "student_edit_field_model", 'transportfee_model', 'marksdivision_model', 'module_model',"classteacher_model",'class_section_time_model','studentAttendaceSetting_model','book_model','subject_model','subjectgroup_model'));
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

    public function subjectGroup(){

           $this->output->set_content_type('application/json');
            $id = $this->input->post('id', TRUE);
            $staff_id = $this->input->post('StaffID', TRUE);
            $date = $this->input->post('date', TRUE);
            $this->loginThoughID($id);

            $subject_list             = $this->subject_model->get();
            $data['subjectlist']      = $subject_list;
            $subjectgroupList         = $this->subjectgroup_model->getByID();
            $data['subjectgroupList'] = $subjectgroupList;

             return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "subjectGroup List",
                        'data' => $data
                    ]));

    }

    public function subjectlist(){
           $this->output->set_content_type('application/json');
            $id = $this->input->post('id', TRUE);
            $staff_id = $this->input->post('StaffID', TRUE);
            $date = $this->input->post('date', TRUE);
            $this->loginThoughID($id);
           
            $subject_result        = $this->subject_model->get();
            $data['subjectlist']   = $subject_result;
            $data['subject_types'] = $this->customlib->subjectType();

             return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Subject list",
                        'data' => $data
                    ]));
    }

    

   
    
}

    

