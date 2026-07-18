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

    function departmentedit($id) {

        $result = $this->department_model->getDepartmentType($id);

        $data["result"] = $result;
        $data["title"] = $this->lang->line('edit_department');
        $departmentTypes = $this->department_model->getDepartmentType();
        $data["departmenttype"] = $departmentTypes;
        $this->load->view("layout/header");
        $this->load->view("admin/staff/departmentType", $data);
        $this->load->view("layout/footer");
    }

    function departmentdelete($id) {

        $this->department_model->deleteDepartment($id);
        redirect('admin/department/department');
    }

}

?>