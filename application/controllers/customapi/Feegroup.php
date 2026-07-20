<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class FeeGroup extends My_Controller
{

    public function __construct()
    {
        parent::__construct();
         $this->load->model('feesessiongroup_model');
         $this->load->model('feegroup_model');
    }

    public function index()
    {
        // if (!$this->rbac->hasPrivilege('fees_group', 'can_view')) {
        //     access_denied();
        // }
        // $this->session->set_userdata('top_menu', 'Fees Collection');
        // $this->session->set_userdata('sub_menu', 'admin/feegroup');

        // $this->form_validation->set_rules(
        //     'name', $this->lang->line('name'), array(
        //         'required',
        //         array('check_exists', array($this->feegroup_model, 'check_exists')),
        //     )
        // );
        // if ($this->form_validation->run() == false) {

        // } else {
        //     $data = array(
        //         'name'        => $this->input->post('name'),
        //         'description' => $this->input->post('description'),
        //     );
        //     $this->feegroup_model->add($data);
        //     $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">' . $this->lang->line('success_message') . '</div>');
        //     redirect('admin/feegroup/index');
        // }
        $feegroup_result      = $this->feegroup_model->get();
        $data['feegroupList'] = $feegroup_result;

        // $this->load->view('layout/header', $data);
        // $this->load->view('admin/feegroup/feegroupList', $data);
        // $this->load->view('layout/footer', $data);
        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "sms_template List",
                        'data' => $data
                    ]));
    }

    public function feeByGroup(){

        $feesessiongroup     = $this->feesessiongroup_model->getFeesByGroup();
        $data['feesessiongroup'] = $feesessiongroup;
      
        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Fee session group List",
                        'data' => $data
                    ]));
    }

    public function delete($id = null)
    {
        if (!$this->rbac->hasPrivilege('fees_group', 'can_delete')) {
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
        $this->feegroup_model->remove($id);
        return $this->output->set_output(json_encode([
            'status'          => true,
            'success_message' => 'Fee group deleted successfully.',
            'data'            => array('id' => $id),
        ]));
    }

    public function edit($id = null)
    {
        if (!$this->rbac->hasPrivilege('fees_group', 'can_edit')) {
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
        $this->session->set_userdata('top_menu', 'Fees Collection');
        $this->session->set_userdata('sub_menu', 'admin/feegroup');
        $data['id']           = $id;
        $feegroup             = $this->feegroup_model->get($id);
        $data['feegroup']     = $feegroup;
        $feegroup_result      = $this->feegroup_model->get();
        $data['feegroupList'] = $feegroup_result;
        $this->form_validation->set_rules(
            'name', $this->lang->line('name'), array(
                'required',
                array('check_exists', array($this->feegroup_model, 'check_exists')),
            )
        );

        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status'        => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'id'          => $id,
                'name'        => $this->input->post('name'),
                'description' => $this->input->post('description'),
            );
            $this->feegroup_model->add($data);
            return $this->output->set_output(json_encode([
                'status'          => true,
                'success_message' => 'Fee group updated successfully.',
                'data'            => $data,
            ]));
        }
    }

}
