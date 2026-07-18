<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Hostelroom extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->library('Customlib');
        $this->load->model("classteacher_model");
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
        $this->load->model(array("roomtype_model","timeline_model", "student_edit_field_model", 'transportfee_model', 'marksdivision_model', 'module_model',"classteacher_model",'class_section_time_model','studentAttendaceSetting_model','book_model','subjectgroup_model','lessonplan_model','sharecontent_model','contenttype_model'));
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

    public function index()
    {
        // if (!$this->rbac->hasPrivilege('hostel_rooms', 'can_view')) {
        //     access_denied();
        // }

        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

        $roomtypelist         = $this->roomtype_model->get();
        $data['roomtypelist'] = $roomtypelist;
        $hostellist           = $this->hostel_model->get();
        $data['hostellist']   = $hostellist;
        $this->session->set_userdata('top_menu', 'Hostel');
        $this->session->set_userdata('sub_menu', 'hostelroom/index');
        $hostelroomlist         = $this->hostelroom_model->lists();
        $data['hostelroomlist'] = $hostelroomlist;

         return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "hostel room list",
                        'data' => $data
                    ]));
    }

    public function create()
    {
        if (!$this->rbac->hasPrivilege('hostel_rooms', 'can_add')) {
            access_denied();
        }
        $roomtypelist           = $this->roomtype_model->get();
        $data['roomtypelist']   = $roomtypelist;
        $hostellist             = $this->hostel_model->get();
        $data['hostellist']     = $hostellist;
        $data['title']          = 'Add Library';
        $hostelroomlist         = $this->hostelroom_model->lists();
        $data['hostelroomlist'] = $hostelroomlist;
        $this->form_validation->set_rules('hostel_id', $this->lang->line('hostel'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('room_type_id', $this->lang->line('room_type'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('room_no', $this->lang->line('room_number_name'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('no_of_bed', $this->lang->line('number_of_bed'), 'trim|required|numeric|xss_clean');
        $this->form_validation->set_rules('cost_per_bed', $this->lang->line('cost_per_bed'), 'trim|required|numeric|xss_clean');
        $hostellist           = $this->hostel_model->get();
        $data['hostellist']   = $hostellist;
        $roomtypelist         = $this->roomtype_model->get();
        $data['roomtypelist'] = $roomtypelist;
        if ($this->form_validation->run() == false) {
            $this->load->view('layout/header');
            $this->load->view('admin/hostelroom/create', $data);
            $this->load->view('layout/footer');
        } else {
            $data = array(
                'hostel_id'    => $this->input->post('hostel_id'),
                'room_type_id' => $this->input->post('room_type_id'),
                'room_no'      => $this->input->post('room_no'),
                'no_of_bed'    => $this->input->post('no_of_bed'),
                'cost_per_bed' => convertCurrencyFormatToBaseAmount($this->input->post('cost_per_bed')),
                'description'  => $this->input->post('description'),
            );
            $this->hostelroom_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">' . $this->lang->line('success_message') . '</div>');
            redirect('admin/hostelroom/index');
        }
    }

    public function getRoom()
    {
        $hosel_id = $this->input->get('hostel_id');
        $data     = $this->hostelroom_model->getRoomByHoselID($hosel_id);
        echo json_encode($data);
    }

    public function edit($id)
    {
        if (!$this->rbac->hasPrivilege('hostel_rooms', 'can_edit')) {
            access_denied();
        }
        $data['title']          = 'Add Hostel';
        $data['id']             = $id;
        $hostellist             = $this->hostel_model->get();
        $data['hostellist']     = $hostellist;
        $roomtypelist           = $this->roomtype_model->get();
        $data['roomtypelist']   = $roomtypelist;
        $hostelroom             = $this->hostelroom_model->get($id);
        $data['hostelroom']     = $hostelroom;
        $hostelroomlist         = $this->hostelroom_model->lists();
        $data['hostelroomlist'] = $hostelroomlist;
        $this->form_validation->set_rules('hostel_id', $this->lang->line('hostel'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('room_type_id', $this->lang->line('room_type'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('room_no', $this->lang->line('room_number_name'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('no_of_bed', $this->lang->line('number_of_bed'), 'trim|required|numeric|xss_clean');
        $this->form_validation->set_rules('cost_per_bed', $this->lang->line('cost_per_bed'), 'trim|required|numeric|xss_clean');
        if ($this->form_validation->run() == false) {
            $this->load->view('layout/header');
            $this->load->view('admin/hostelroom/edit', $data);
            $this->load->view('layout/footer');
        } else {
            $data = array(
                'id'           => $this->input->post('id'),
                'hostel_id'    => $this->input->post('hostel_id'),
                'room_type_id' => $this->input->post('room_type_id'),
                'room_no'      => $this->input->post('room_no'),
                'no_of_bed'    => $this->input->post('no_of_bed'),
                'cost_per_bed' => convertCurrencyFormatToBaseAmount($this->input->post('cost_per_bed')),
                'description'  => $this->input->post('description'),
            );
            $this->hostelroom_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">' . $this->lang->line('update_message') . '</div>');
            redirect('admin/hostelroom/index');
        }
    }

    public function delete($id)
    {
        if (!$this->rbac->hasPrivilege('hostel_rooms', 'can_delete')) {
            access_denied();
        }
        $data['title'] = 'Fees Master List';
        $this->hostelroom_model->remove($id);
        redirect('admin/hostelroom/index');
    }

    public function studenthosteldetails()
    {
        $this->session->set_userdata('top_menu', 'Reports');
        $this->session->set_userdata('sub_menu', 'reports/studenthosteldetails');
        $data['title']       = 'Student Hostel Details';
        $class               = $this->class_model->get();
        $data['classlist']   = $class;
        $userdata            = $this->customlib->getUserData();
        $data['sch_setting'] = $this->sch_setting_detail;
        $data['hostellist']  = $this->hostel_model->get();
        $this->load->view("layout/header", $data);
        $this->load->view("admin/hostelroom/studenthosteldetails", $data);
        $this->load->view("layout/footer", $data);
    }

    //datatable function to check search parameter validation
    public function searchvalidation()
    {
        $class_id    = $this->input->post('class_id');
        $section_id  = $this->input->post('section_id');
        $hostel_name = $this->input->post('hostel_name');

        $this->form_validation->set_rules('class_id', $this->lang->line('class'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('section_id', $this->lang->line('section'), 'trim|required|xss_clean');

        if ($this->form_validation->run() == true) {

            $params = array('class_id' => $class_id, 'section_id' => $section_id, 'hostel_name' => $hostel_name);
            $array  = array('status' => 1, 'error' => '', 'params' => $params);
            echo json_encode($array);

        } else {

            $error               = array();
            $error['class_id']   = form_error('class_id');
            $error['section_id'] = form_error('section_id');
            $array               = array('status' => 0, 'error' => $error);
            echo json_encode($array);
            
        }
    }

    public function dthostellist()
    {
        $class       = $this->class_model->get();
        $classlist   = $class;
        $userdata    = $this->customlib->getUserData();
        $sch_setting = $this->sch_setting_detail;
        $carray      = array();

        if (!empty($classlist)) {
            foreach ($classlist as $ckey => $cvalue) {

                $carray[] = $cvalue["id"];
            }
        }

        $currency_symbol = $this->customlib->getSchoolCurrencyFormat();
        $class_id        = $this->input->post('class_id');
        $section_id      = $this->input->post('section_id');
        $hostel_name     = $this->input->post('hostel_name');

        $sch_setting = $this->sch_setting_detail;

        $resultlist = $this->hostelroom_model->searchHostelDetails($section_id, $class_id, $hostel_name);
        $resultlist = json_decode($resultlist);
        $dt_data    = array();
        if (!empty($resultlist->data)) {
            foreach ($resultlist->data as $resultlist_key => $student) {               

                $row       = array();
                $row[]     = $student->class . " - " . $student->section;
                $row[]     = $student->admission_no;
                $row[]     = $this->customlib->getFullName($student->firstname, $student->middlename, $student->lastname, $sch_setting->middlename, $sch_setting->lastname);
                $row[]     = $student->mobileno;
                $row[]     = $student->guardian_phone;
                $row[]     = $student->hostel_name;
                $row[]     = $student->room_no;
                $row[]     = $student->room_type;
                $row[]     = amountFormat($student->cost_per_bed);
                $dt_data[] = $row;
            }

        }
        $json_data = array(
            "draw"            => intval($resultlist->draw),
            "recordsTotal"    => intval($resultlist->recordsTotal),
            "recordsFiltered" => intval($resultlist->recordsFiltered),
            "data"            => $dt_data,
        );
        echo json_encode($json_data);

    }

}
