<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

/**
 * Schoolmaster — admin console to add/manage tenant schools (DB-per-school).
 *
 * URL base: /schoolmaster
 * Access:   super-admin / admin only (tenant provisioning is sensitive).
 *
 * Each row maps a school_id/code to a physical database connection. The
 * DatabaseSwitcher hook and Tenant_lib resolve requests against this registry.
 */
class Schoolmaster extends Admin_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('school_model');
    }

    /** Restrict to admin/super-admin roles. */
    private function guard()
    {
        $role      = $this->customlib->getStaffRole();
        $role_name = strtolower(str_replace(' ', '', json_decode($role)->name));
        if (strpos($role_name, 'admin') === false) {
            access_denied();
        }
    }

    public function index()
    {
        $this->guard();
        $this->session->set_userdata('top_menu', 'System Settings');
        $this->session->set_userdata('sub_menu', 'schoolmaster/index');
        $data['title']      = 'School Master';
        $data['schoollist'] = $this->school_model->getAll();
        $this->load->view('layout/header', $data);
        $this->load->view('schoolmaster/schoolList', $data);
        $this->load->view('layout/footer', $data);
    }

    public function create()
    {
        $this->guard();
        $data['title']      = 'Add School';
        $data['schoollist'] = $this->school_model->getAll();

        $this->form_validation->set_rules('name', 'Name', 'trim|required');
        $this->form_validation->set_rules('code', 'Code', 'trim|required|alpha_dash|callback_unique_code');

        if ($this->form_validation->run() == false) {
            $this->load->view('layout/header', $data);
            $this->load->view('schoolmaster/schoolList', $data);
            $this->load->view('layout/footer', $data);
        } else {
            $insert = array(
                'name'           => $this->input->post('name'),
                'code'           => $this->input->post('code'),
                'domain'         => $this->input->post('domain') ?: null,
                'address'        => $this->input->post('address') ?: null,
                'phone'          => $this->input->post('phone') ?: null,
                'email'          => $this->input->post('email') ?: null,
                'principal_name' => $this->input->post('principal_name') ?: null,
                'academic_year'  => $this->input->post('academic_year') ?: null,
                'base_url'       => $this->input->post('base_url') ?: null,
                'saas_key'       => $this->input->post('saas_key') ?: null,
                'is_active'      => 1,
            );
            $this->school_model->add($insert);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">' . $this->lang->line('success_message') . '</div>');
            redirect('schoolmaster/index');
        }
    }

    public function edit($id)
    {
        $this->guard();
        $data['title']      = 'Edit School';
        $data['id']         = $id;
        $data['school']     = $this->school_model->get($id);
        $data['schoollist'] = $this->school_model->getAll();

        if (empty($data['school'])) {
            show_404();
        }

        $this->form_validation->set_rules('name', 'Name', 'trim|required');
        $this->form_validation->set_rules('code', 'Code', 'trim|required|alpha_dash');

        if ($this->form_validation->run() == false) {
            $this->load->view('layout/header', $data);
            $this->load->view('schoolmaster/schoolEdit', $data);
            $this->load->view('layout/footer', $data);
        } else {
            // Guard the unique code manually on edit (exclude self).
            if ($this->school_model->existsCode($this->input->post('code'), $id)) {
                $this->session->set_flashdata('msg', '<div class="alert alert-danger text-left">Code already in use.</div>');
                redirect('schoolmaster/edit/' . $id);
                return;
            }
            $update = array(
                'id'             => $id,
                'name'           => $this->input->post('name'),
                'code'           => $this->input->post('code'),
                'domain'         => $this->input->post('domain') ?: null,
                'address'        => $this->input->post('address') ?: null,
                'phone'          => $this->input->post('phone') ?: null,
                'email'          => $this->input->post('email') ?: null,
                'principal_name' => $this->input->post('principal_name') ?: null,
                'academic_year'  => $this->input->post('academic_year') ?: null,
                'base_url'       => $this->input->post('base_url') ?: null,
                'saas_key'       => $this->input->post('saas_key') ?: null,
            );
            $this->school_model->add($update);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">' . $this->lang->line('update_message') . '</div>');
            redirect('schoolmaster/index');
        }
    }

    public function toggle($id)
    {
        $this->guard();
        $this->school_model->toggle($id);
        redirect('schoolmaster/index');
    }

    public function delete($id)
    {
        $this->guard();
        if (!$this->school_model->remove($id)) {
            $this->session->set_flashdata('list_msg', '<div class="alert alert-danger text-left">The default school (#1) cannot be deleted.</div>');
        } else {
            $this->session->set_flashdata('list_msg', '<div class="alert alert-success text-left">' . $this->lang->line('delete_message') . '</div>');
        }
        redirect('schoolmaster/index');
    }

    /** form_validation callback: unique code on create. */
    public function unique_code($code)
    {
        if ($this->school_model->existsCode($code)) {
            $this->form_validation->set_message('unique_code', 'This code is already in use.');
            return false;
        }
        return true;
    }
}
