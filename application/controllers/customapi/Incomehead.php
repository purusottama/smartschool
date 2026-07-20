<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Incomehead extends My_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
    }

    public function index()
    {
        // if (!$this->rbac->hasPrivilege('income_head', 'can_view')) {
        //     access_denied();
        // }
        // $this->session->set_userdata('top_menu', 'Income');
        // $this->session->set_userdata('sub_menu', 'incomeshead/index');
        $data['title']        = 'Income Head List';
        $category_result      = $this->incomehead_model->get();
        $data['categorylist'] = $category_result;
         return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Income Head  List",
                        'data' => $data
                    ]));
        // $this->load->view('layout/header', $data);
        // $this->load->view('admin/incomehead/incomeheadList', $data);
        // $this->load->view('layout/footer', $data);
    }

    public function view($id = null)
    {
        if (!$this->rbac->hasPrivilege('income_head', 'can_view')) {
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
        $data['title']    = $this->lang->line('income_head_list');
        $category         = $this->incomehead_model->get($id);
        $data['category'] = $category;
        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Income head details loaded successfully.',
            'data' => $data,
        ]));
    }

    public function delete($id = null)
    {
        if (!$this->rbac->hasPrivilege('income_head', 'can_delete')) {
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
        $this->incomehead_model->remove($id);
        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Income head deleted successfully.',
            'data' => array('id' => $id),
        ]));
    }

    public function create()
    {
        if (!$this->rbac->hasPrivilege('income_head', 'can_add')) {
            access_denied();
        }
        $data['title']        = 'Add Income Head';
        $category_result      = $this->incomehead_model->get();
        $data['categorylist'] = $category_result;
        $this->form_validation->set_rules('incomehead', $this->lang->line('income_head'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'income_category' => $this->input->post('incomehead'),
                'description'     => $this->input->post('description'),
            );
            $this->incomehead_model->add($data);
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Income head created successfully.',
                'data' => $data,
            ]));
        }
    }

    public function edit($id = null)
    {
        if (!$this->rbac->hasPrivilege('income_head', 'can_edit')) {
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
        $data['title']        = 'Edit Income Head';
        $category_result      = $this->incomehead_model->get();
        $data['categorylist'] = $category_result;
        $data['id']           = $id;
        $category             = $this->incomehead_model->get($id);
        $data['incomehead']   = $category;
        $this->form_validation->set_rules('incomehead', $this->lang->line('income_head'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'id'              => $id,
                'income_category' => $this->input->post('incomehead'),
                'description'     => $this->input->post('description'),
            );
            $this->incomehead_model->add($data);
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Income head updated successfully.',
                'data' => $data,
            ]));
        }
    }

}
