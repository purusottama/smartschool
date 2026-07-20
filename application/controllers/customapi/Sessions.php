<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Sessions extends My_Controller
{

    function __construct() {

        parent::__construct();

        $this->load->helper('file');
        $this->config->load("payroll");
        $this->load->model('department_model');
        $this->load->model('session_model');
    }

    public function index()
    {
        // if (!$this->rbac->hasPrivilege('session_setting', 'can_view')) {
        //     access_denied();
        // }
        // $this->session->set_userdata('top_menu', 'System Settings');
        // $this->session->set_userdata('sub_menu', 'sessions/index');
        // $data['title']       = 'Session List';
         $session_result      = $this->session_model->getAllSession();
        $data['sessionlist'] = $session_result;
          return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "sessionlist List",
                        'data' => $data
                    ]));
        // $this->load->view('layout/header', $data);
        // $this->load->view('session/sessionList', $data);
        // $this->load->view('layout/footer', $data);
    }

    public function view($id = null)
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
        if (!$this->rbac->hasPrivilege('session_setting', 'can_view')) {
            access_denied();
        }
        $data['title']   = 'Session List';
        $session         = $this->session_model->get($id);
        $data['session'] = $session;
        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Session details.',
            'data' => $data,
        ]));
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
        if (!$this->rbac->hasPrivilege('session_setting', 'can_delete')) {
            access_denied();
        }
        $this->session_model->remove($id);
        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Session deleted successfully.',
            'data' => array('id' => $id),
        ]));
    }

    public function create()
    {
        if (!$this->rbac->hasPrivilege('session_setting', 'can_add')) {
            access_denied();
        }
        $session_result      = $this->session_model->getAllSession();
        $data['sessionlist'] = $session_result;
        $data['title']       = 'Add Session';
        $this->form_validation->set_rules('session', $this->lang->line('session'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'session' => $this->input->post('session'),
            );
            $this->session_model->add($data);
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Session added successfully.',
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
        if (!$this->rbac->hasPrivilege('session_setting', 'can_edit')) {
            access_denied();
        }
        $session_result      = $this->session_model->getAllSession();
        $data['sessionlist'] = $session_result;
        $data['title']       = 'Edit Session';
        $data['id']          = $id;
        $session             = $this->session_model->get($id);
        $data['session']     = $session;
        $this->form_validation->set_rules('session', $this->lang->line('session'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'id'      => $id,
                'session' => $this->input->post('session'),
            );
            $this->session_model->add($data);
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Session updated successfully.',
                'data' => $data,
            ]));
        }
    }

}