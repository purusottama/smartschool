<?php

class Schoolhouse extends My_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model("schoolhouse_model");
    }

    public function index()
    {
        // if (!$this->rbac->hasPrivilege('student_houses', 'can_view')) {
        //     access_denied();
        // }
        // $this->session->set_userdata('top_menu', 'Student Information');
        // $this->session->set_userdata('sub_menu', 'admin/schoolhouse');
        $data['title']       = $this->lang->line('add_school_house');
        $data["house_name"]  = "";
        $data["description"] = "";
        $houselist           = $this->schoolhouse_model->get();
        $data["houselist"]   = $houselist;
         return $this->output->set_output(json_encode([
                    'status' => true,
                    'success_message' => "Disable Students List",
                    'data' => $data
                ]));

        // $this->load->view('layout/header', $data);
        // $this->load->view('admin/schoolhouse/houselist', $data);
        // $this->load->view('layout/footer', $data);
    }

    public function create()
    {
        if (!$this->rbac->hasPrivilege('student_houses', 'can_add')) {
            access_denied();
        }
        $data['title']       = $this->lang->line('add_school_house');
        $houselist           = $this->schoolhouse_model->get();
        $data["houselist"]   = $houselist;
        $data["house_name"]  = "";
        $data["description"] = "";
        $this->form_validation->set_rules('house_name', $this->lang->line('name'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'house_name'  => $this->input->post('house_name'),
                'is_active'   => 'yes',
                'description' => $this->input->post('description'),
            );
            $this->schoolhouse_model->add($data);

            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'School house added successfully.',
                'data' => $data,
            ]));
        }
    }

    public function edit($id = null)
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
        if (!$this->rbac->hasPrivilege('student_houses', 'can_edit')) {
            access_denied();
        }
        $data['title']       = $this->lang->line('edit_school_house');
        $houselist           = $this->schoolhouse_model->get();
        $data["houselist"]   = $houselist;
        $data['id']          = $id;
        $house               = $this->schoolhouse_model->get($id);
        $data["house"]       = $house;
        $data["house_name"]  = $house["house_name"];
        $data["description"] = $house["description"];
        $this->form_validation->set_rules('house_name', $this->lang->line('name'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'id'          => $id,
                'house_name'  => $this->input->post('house_name'),
                'is_active'   => 'yes',
                'description' => $this->input->post('description'),
            );
            $this->schoolhouse_model->add($data);
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'School house updated successfully.',
                'data' => $data,
            ]));
        }
    }

    public function delete($id = null)
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
        if (!$this->rbac->hasPrivilege('student_houses', 'can_delete')) {
            access_denied();
        }
        if (!empty($id)) {
            $this->schoolhouse_model->delete($id);
        }
        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'School house deleted successfully.',
            'data' => array('id' => $id),
        ]));
    }

}
