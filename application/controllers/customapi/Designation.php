<?php

/**
 * 
 */
class Designation extends MY_Controller {

    function __construct() {

        parent::__construct();

        $this->load->helper('file');
        $this->config->load("payroll");

        $this->load->model('designation_model');
        $this->load->model('staff_model');
    }

    function designation() {

        // $this->session->set_userdata('top_menu', 'HR');
        // $this->session->set_userdata('sub_menu', 'admin/designation/designation');
        $designation = $this->designation_model->get();
        $data["title"] = $this->lang->line('add_designation');
        $data["designation"] = $designation;
        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "designation List",
                        'data' => $data
                    ]));
    }

    function designationedit($id) {

        $result = $this->designation_model->get($id);
        $data["title"] = $this->lang->line('edit_designation');
        $data["result"] = $result;

        $designation = $this->designation_model->get();
        $data["designation"] = $designation;
        $this->load->view("layout/header");
        $this->load->view("admin/staff/designation", $data);
        $this->load->view("layout/footer");
    }

    function designationdelete($id) {

        $this->designation_model->deleteDesignation($id);
        redirect('admin/designation/designation');
    }

}

?>