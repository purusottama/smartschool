<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

/**
 * Schoolswitch — super-admin school selector (shared-DB multi-tenancy).
 *
 * Sets the active tenant context (session school_id) for a super admin so that
 * every subsequent scoped query/report targets the chosen school, or ALL schools.
 * Non-super-admin users are rejected (they are pinned to their own school).
 *
 *   /schoolswitch/set/5     -> view school #5
 *   /schoolswitch/set/all   -> view all schools (cross-school reports)
 */
class Schoolswitch extends Admin_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('tenant_lib');
        $this->load->model('school_model');
    }

    public function set($id = 'all')
    {
        if (!$this->tenant_lib->canSwitch()) {
            access_denied();
            return;
        }

        $ok = $this->tenant_lib->selectSchool($id === 'all' ? Tenant_lib::ALL : $id);
        if (!$ok) {
            $this->session->set_flashdata('list_msg', '<div class="alert alert-danger">Invalid school selection.</div>');
        }

        // Return where the user came from, else the dashboard.
        $back = $this->agent->referrer();
        if (empty($back) || strpos($back, base_url()) !== 0) {
            $back = base_url('admin/admin/dashboard');
        }
        redirect($back);
    }
}
