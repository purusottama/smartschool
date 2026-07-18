<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Transport extends MY_Controller
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
        $this->load->model(array("timeline_model", "student_edit_field_model", 'transportfee_model', 'marksdivision_model', 'module_model',"classteacher_model",'class_section_time_model','studentAttendaceSetting_model','book_model','pickuppoint_model','route_model','vehicle_model'));
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


            public function pickuppoint(){

                $this->output->set_content_type('application/json');
                    $id = $this->input->post('id', TRUE);
                    $staff_id = $this->input->post('StaffID', TRUE);
                    $date = $this->input->post('date', TRUE);
                    $this->loginThoughID($id);


                    $listpickup_point         = $this->pickuppoint_model->listpickup_point();
                    $data['listpickup_point'] = $listpickup_point;

                    $m       = json_decode($listpickup_point);
                    $dt_data = array();

                    if (!empty($m->data)) {
                        foreach ($m->data as $key => $value) {
                            
                            // if ($this->rbac->hasPrivilege('pickup_point', 'can_edit')) {                    
                            //     $action = '<button class="btn btn-default btn-xs pickup_map" data-pick-location="' . $value->id . '"data-toggle="tooltip" title="' . $this->lang->line("map") . '"><i class="fa fa-map-marker"></i></button><a onclick="edit(' . $value->id . ')" class="btn btn-default btn-xs"  data-toggle="tooltip" title="' . $this->lang->line('edit') . '"><i class="fa fa-pencil"></i></a>';         
                            // }else{
                            //     $action = '';
                            // }
                            
                            // if ($this->rbac->hasPrivilege('pickup_point', 'can_delete')) {
                            //     $deletebtn = " <a href=" . base_url() . 'admin/pickuppoint/delete_point/' . $value->id . " class='btn btn-default btn-xs' data-toggle='tooltip'  title=" . $this->lang->line('delete') . " '  onclick='return confirm(" . '"' . $this->lang->line('delete_confirm') . '"' . "  )' ><i class='fa fa fa-remove'></i></a>";
                            // }else{
                            //     $deletebtn = '';
                            // }

                            $row       = array();
                            $row[]     = $value->name;
                            $row[]     = $value->latitude;
                            $row[]     = $value->longitude;
                            //$row[]     = $action . ' ' . $deletebtn;
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

        $data = array();
         $data['pickuppoint']  = $json_data;

          return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Pickuppoint List",
                        'data' => $data
                    ]));


            }

            public function routelist(){

                $this->output->set_content_type('application/json');
                $id = $this->input->post('id', TRUE);
                $staff_id = $this->input->post('StaffID', TRUE);
                $date = $this->input->post('date', TRUE);
                $this->loginThoughID($id);

                $listroute         = $this->route_model->listroute();
                $data['listroute'] = $listroute;

                 return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Route List",
                        'data' => $data
                    ]));
            }

            public function listVehicle(){
                 $this->output->set_content_type('application/json');
                $id = $this->input->post('id', TRUE);
                $staff_id = $this->input->post('StaffID', TRUE);
                $date = $this->input->post('date', TRUE);
                $this->loginThoughID($id);

                $listVehicle         = $this->vehicle_model->get();
                $data['listVehicle'] = $listVehicle;

                return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "list Vehicle",
                        'data' => $data
                    ]));
            }

            public function pickuppointAssign(){
                 $this->output->set_content_type('application/json');
                $id = $this->input->post('id', TRUE);
                $staff_id = $this->input->post('StaffID', TRUE);
                $date = $this->input->post('date', TRUE);
                $this->loginThoughID($id);
                
                $assign_pickup_point              = $this->pickuppoint_model->route_pickup_point();
                $vehroute_result                  = $this->pickuppoint_model->get_routelist();
                $data['vehroutelist']             = $vehroute_result; 
                $data['assign_pickup_point_list'] = $assign_pickup_point;

                 return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Pick uppoint Assign",
                        'data' => $data
                    ]));

            }


    

   
    
}

    

