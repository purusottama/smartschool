<?php

class Department extends MY_Controller {

    function __construct() {

        parent::__construct();

        $this->load->helper('file');
        $this->config->load("payroll");
        $this->load->model('department_model');
        $this->load->model('staff_model');
    }

    function department() {

        
        $DepartmentTypes = $this->department_model->getDepartmentType();
        $data["departmenttype"] = $DepartmentTypes;
        
        $data["title"] = $this->lang->line('add_department');
       
          return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "department List",
                        'data' => $data
                    ]));
    }

    function departmentedit($id = null) {

        if (empty($id)) {
            $id = $this->input->post('id', true);
        }
        if (empty($id)) {
            return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => 'Record id is required.',
            ]));
        }

        $result = $this->department_model->getDepartmentType($id);

        $data["result"] = $result;
        $data["title"] = $this->lang->line('edit_department');
        $departmentTypes = $this->department_model->getDepartmentType();
        $data["departmenttype"] = $departmentTypes;
        return $this->output->set_output(json_encode([
                    'status' => true,
                    'success_message' => 'Department details fetched successfully.',
                    'data' => $data,
        ]));
    }

    function departmentdelete($id = null) {

        if (empty($id)) {
            $id = $this->input->post('id', true);
        }
        if (empty($id)) {
            return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => 'Record id is required.',
            ]));
        }

        $this->department_model->deleteDepartment($id);
        return $this->output->set_output(json_encode([
                    'status' => true,
                    'success_message' => 'Department deleted successfully.',
                    'data' => [],
        ]));
    }

}

?>