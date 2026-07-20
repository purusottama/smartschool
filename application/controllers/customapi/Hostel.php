<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Hostel extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->library('Customlib');
        $this->load->model("hostel_model");
    }

    public function index()
    {

        $listhostel         = $this->hostel_model->listhostel();
        $data['listhostel'] = $listhostel;
        $ght                = $this->customlib->getHostaltype();
        $data['ght']        = $ght;

        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "hostel room list",
                        'data' => $data
                    ]));
       
    }

    public function create()
    {
        if (!$this->rbac->hasPrivilege('hostel', 'can_add')) {
            access_denied();
        }
        $data['title'] = 'Add Library';
        $this->form_validation->set_rules('hostel_name', $this->lang->line('hostel_name'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('type', $this->lang->line('type'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status'        => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'hostel_name' => $this->input->post('hostel_name'),
                'type'        => $this->input->post('type'),
                'address'     => $this->input->post('address'),
                'intake'      => $this->input->post('intake'),
                'description' => $this->input->post('description'),
            );
            $this->hostel_model->addhostel($data);
            return $this->output->set_output(json_encode([
                'status'          => true,
                'success_message' => 'Hostel created successfully.',
                'data'            => $data,
            ]));
        }
    }

    public function edit($id = null)
    {
        if (!$this->rbac->hasPrivilege('hostel', 'can_edit')) {
            access_denied();
        }
        if (empty($id)) {
            $id = $this->input->post('id', true);
        }
        if (empty($id)) {
            return $this->output->set_output(json_encode([
                'status'        => false,
                'error_message' => 'Record id is required.',
            ]));
        }
        $data['title']      = 'Add Hostel';
        $data['id']         = $id;
        $edithostel         = $this->hostel_model->get($id);
        $data['edithostel'] = $edithostel;
        $ght                = $this->customlib->getHostaltype();
        $data['ght']        = $ght;
        $this->form_validation->set_rules('hostel_name', $this->lang->line('hostel_name'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('type', $this->lang->line('type'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status'        => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'id'          => $this->input->post('id'),
                'hostel_name' => $this->input->post('hostel_name'),
                'type'        => $this->input->post('type'),
                'address'     => $this->input->post('address'),
                'intake'      => $this->input->post('intake'),
                'description' => $this->input->post('description'),
            );
            $this->hostel_model->addhostel($data);
            return $this->output->set_output(json_encode([
                'status'          => true,
                'success_message' => 'Hostel updated successfully.',
                'data'            => $data,
            ]));
        }
    }

    public function delete($id = null)
    {
        if (!$this->rbac->hasPrivilege('hostel', 'can_delete')) {
            access_denied();
        }
        if (empty($id)) {
            $id = $this->input->post('id', true);
        }
        if (empty($id)) {
            return $this->output->set_output(json_encode([
                'status'        => false,
                'error_message' => 'Record id is required.',
            ]));
        }
        $data['title'] = 'Fees Master List';
        $this->hostel_model->remove($id);
        return $this->output->set_output(json_encode([
            'status'          => true,
            'success_message' => 'Hostel deleted successfully.',
            'data'            => array('id' => $id),
        ]));
    }

}
