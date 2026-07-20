<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Visitorspurpose extends My_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model("visitors_purpose_model");
    }

    public function index()
    {
        if (!$this->rbac->hasPrivilege('setup_font_office', 'can_view')) {
            access_denied();
        }

        $this->session->set_userdata('top_menu', 'front_office');
        $this->session->set_userdata('sub_menu', 'admin/visitorspurpose');
        $this->form_validation->set_rules('visitors_purpose', $this->lang->line('visitors_purpose'), 'required');

        if ($this->form_validation->run() == false) {
            $data['visitors_purpose_list'] = $this->visitors_purpose_model->visitors_purpose_list();

            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Visitors purpose list loaded successfully.',
                'data' => $data,
            ]));
        } else {

            $visitors_purpose = array(
                'visitors_purpose' => $this->input->post('visitors_purpose'),
                'description'      => $this->input->post('description'),
            );
            $this->visitors_purpose_model->add($visitors_purpose);

            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Visitors purpose added successfully.',
                'data' => $visitors_purpose,
            ]));
        }
    }

    public function edit($visitors_purpose_id = null)
    {
        if (!$this->rbac->hasPrivilege('setup_font_office', 'can_edit')) {
            access_denied();
        }

        if (empty($visitors_purpose_id)) {
            $visitors_purpose_id = $this->input->post('id', true);
        }

        if (empty($visitors_purpose_id)) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => 'Record id is required.',
            ]));
        }

        $this->form_validation->set_rules('visitors_purpose', $this->lang->line('visitors_purpose'), 'required');

        if ($this->form_validation->run() == false) {
            $data['visitors_purpose_list'] = $this->visitors_purpose_model->visitors_purpose_list();
            $data['visitors_purpose_data'] = $this->visitors_purpose_model->visitors_purpose_list($visitors_purpose_id);

            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Visitors purpose detail loaded successfully.',
                'data' => $data,
            ]));
        } else {
            $visitors_purpose = array(
                'visitors_purpose' => $this->input->post('visitors_purpose'),
                'description'      => $this->input->post('description'),
            );
            $this->visitors_purpose_model->update($visitors_purpose_id, $visitors_purpose);

            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Visitors purpose updated successfully.',
                'data' => $visitors_purpose,
            ]));
        }
    }

    public function delete($id = null)
    {
        if (!$this->rbac->hasPrivilege('setup_font_office', 'can_delete')) {
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

        $this->visitors_purpose_model->delete($id);

        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Visitors purpose deleted successfully.',
            'data' => array('id' => $id),
        ]));
    }

}
