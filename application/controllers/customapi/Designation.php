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

    function designationedit($id = null) {

        if (empty($id)) {
            $id = $this->input->post('id', true);
        }
        if (empty($id)) {
            return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => 'Record id is required.',
            ]));
        }

        $result = $this->designation_model->get($id);
        $data["title"] = $this->lang->line('edit_designation');
        $data["result"] = $result;

        $designation = $this->designation_model->get();
        $data["designation"] = $designation;
        return $this->output->set_output(json_encode([
                    'status' => true,
                    'success_message' => 'Designation details fetched successfully.',
                    'data' => $data,
        ]));
    }

    function designationdelete($id = null) {

        if (empty($id)) {
            $id = $this->input->post('id', true);
        }
        if (empty($id)) {
            return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => 'Record id is required.',
            ]));
        }

        $this->designation_model->deleteDesignation($id);
        return $this->output->set_output(json_encode([
                    'status' => true,
                    'success_message' => 'Designation deleted successfully.',
                    'data' => [],
        ]));
    }

}

?>