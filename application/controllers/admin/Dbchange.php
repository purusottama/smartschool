<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dbchange extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        // Load session
        $this->load->library('session');

        // OPTIONAL: restrict only to super admin
        /*
        if (!$this->session->userdata('is_super_admin')) {
            show_error('Unauthorized', 403);
        }
        */
    }

    /**
     * URL:
     * admin/dbchange/starschool ? sms2 (school DB)
     * admin/dbchange/school     ? sms  (default DB)
     */
    public function index($school = '')
    {
        if (!in_array($school, ['school', 'starschool'])) {
            show_error('Invalid DB selection', 400);
        }


        // Map URL param ? DB group
        if ($school === 'starschool') {
            // sms2
            $this->session->set_userdata('selectschool', 'school');
        } else {
            // sms
            $this->session->set_userdata('selectschool', 'default');
        }

        // Optional log
        log_message('error', 'DB change requested via URL: ' . $school);

        // Redirect back
        redirect('admin/admin/dashboard'); // change if needed
    }
}
