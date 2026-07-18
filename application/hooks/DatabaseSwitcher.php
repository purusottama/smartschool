<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DatabaseSwitcher {

    public function switchDatabase()
    {
        $CI =& get_instance();
        $CI->load->library('session');

        $host = $_SERVER['HTTP_HOST'] ?? '';
        $db_group = 'default'; // fallback

        /*
         STEP 1: Domain-based DB mapping
        */
        if ($host === 'school.aarshilearning.com') {
            $db_group = 'school';
        } elseif ($host === 'mountschool.aarshilearning.com') {
            $db_group = 'mountschool';
        } elseif ($host === 'annsschool.aarshilearning.com') {
            $db_group = 'annsschool';
        }

        /*
         STEP 2: Optional session override
        */
        $selected = $CI->session->userdata('selectschool');
        if (in_array($selected, ['default', 'school', 'mountschool', 'annsschool'])) {
            $db_group = $selected;
        }

        log_message('error', 'DB switched to: ' . $db_group . ' | Host: ' . $host);

        // Load DB
        $CI->db = $CI->load->database($db_group, TRUE);
    }
}