<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Roomtype extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('Customlib');
        $this->load->model("roomtype_model");
    }

    public function index()
    {
        // if (!$this->rbac->hasPrivilege('room_type', 'can_view')) {
        //     access_denied();
        // }
        $roomtypelist         = $this->roomtype_model->get();
        $data['roomtypelist'] = $roomtypelist;
        $listroomtype         = $this->roomtype_model->lists();
        $data['listroomtype'] = $listroomtype;
        $ght                  = $this->customlib->getHostaltype();
        $data['ght']          = $ght;
        
         return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Root Type  ",
                        'data' => $data
                    ]));

    }

    public function create()
    {
        if (!$this->rbac->hasPrivilege('room_type', 'can_add')) {
            access_denied();
        }
        $data['title'] = 'Add Library';
        $this->form_validation->set_rules('room_type', $this->lang->line('room_type'), 'trim|required|xss_clean');
        $roomtypelist         = $this->roomtype_model->get();
        $data['roomtypelist'] = $roomtypelist;
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'room_type'   => $this->input->post('room_type'),
                'description' => $this->input->post('description'),
            );
            $this->roomtype_model->add($data);
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Room type added successfully.',
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
        if (!$this->rbac->hasPrivilege('room_type', 'can_edit')) {
            access_denied();
        }
        $data['title']        = 'Add Hostel';
        $data['id']           = $id;
        $roomtype             = $this->roomtype_model->get($id);
        $data['roomtype']     = $this->roomtype_model->get($id);
        $roomtypelist         = $this->roomtype_model->get();
        $data['roomtypelist'] = $roomtypelist;
        $this->form_validation->set_rules('room_type', $this->lang->line('room_type'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'id'          => $this->input->post('id'),
                'room_type'   => $this->input->post('room_type'),
                'description' => $this->input->post('description'),
            );
            $this->roomtype_model->add($data);
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Room type updated successfully.',
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
        if (!$this->rbac->hasPrivilege('room_type', 'can_delete')) {
            access_denied();
        }
        $data['title'] = 'Fees Master List';
        $this->roomtype_model->remove($id);
        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Room type deleted successfully.',
            'data' => array('id' => $id),
        ]));
    }

}
