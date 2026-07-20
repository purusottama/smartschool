<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Disable_reason extends My_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        // if (!$this->rbac->hasPrivilege('disable_reason', 'can_view')) {
        //     access_denied();
        // }
        // $this->session->set_userdata('top_menu', 'Student Information');
        // $this->session->set_userdata('sub_menu', 'student/disable_reason');
        // No 'name' posted -> plain list request.
        if ($this->input->post('name') === null) {
            $data['results'] = $this->disable_reason_model->get();

            return $this->output->set_output(json_encode([
                'status'          => true,
                'success_message' => 'Disable reason list',
                'data'            => $data,
            ]));
        }

        // 'name' posted -> create (or update when reason_id is supplied), the
        // same write the admin/web screen performs, against the same model.
        $this->form_validation->set_rules('name', $this->lang->line('disable_reason'), 'trim|required|xss_clean');

        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status'        => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        }

        $reason_id = $this->input->post('reason_id', true);
        $record    = array(
            'reason' => $this->input->post('name', true),
        );

        if (empty($reason_id)) {
            $this->disable_reason_model->add($record);
            $message = 'Disable reason has been added successfully.';
        } else {
            $record['id'] = $reason_id;
            $this->disable_reason_model->add($record);
            $message = 'Disable reason has been updated successfully.';
        }

        $data['results'] = $this->disable_reason_model->get();

        return $this->output->set_output(json_encode([
            'status'          => true,
            'success_message' => $message,
            'data'            => $data,
        ]));
    }

    public function edit($id = null)
    {
        if (!$this->rbac->hasPrivilege('disable_reason', 'can_edit')) {
            access_denied();
        }

        if (empty($id)) {
            $id = $this->input->post('id', true);
        }

        if (empty($id)) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => 'Record id is required.',
            ]));
        }

        $data['id'] = $id;

        $data['data']    = $this->disable_reason_model->get($id);
        $data['results'] = $this->disable_reason_model->get();
        $data['name']    = isset($data['data']['reason']) ? $data['data']['reason'] : '';
        $this->form_validation->set_rules('name', $this->lang->line('disable_reason'), 'trim|required|xss_clean');

        if ($this->form_validation->run() == false) {

            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {

            $data = array(
                'reason' => $this->input->post('name'),
            );

            $data['id'] = $id;

            $this->disable_reason_model->add($data);

            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Disable reason updated successfully.',
                'data' => $data,
            ]));
        }
    }

    public function get_details($id = null)
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

        $data = $this->disable_reason_model->get($id);
        echo json_encode($data);
    }

    public function delete($id = null)
    {
        if (!$this->rbac->hasPrivilege('disable_reason', 'can_delete')) {
            access_denied();
        }

        if (empty($id)) {
            $id = $this->input->post('id', true);
        }

        if (empty($id)) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => 'Record id is required.',
            ]));
        }

        $this->disable_reason_model->remove($id);

        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Disable reason deleted successfully.',
            'data' => array('id' => $id),
        ]));
    }

}
