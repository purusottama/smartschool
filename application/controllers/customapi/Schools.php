<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

/**
 * customapi/Schools — tenant list for the mobile app's school picker.
 *
 *   GET/POST {{base_url}}/customapi/schools/list
 *   -> [{id, name, code}]  (active schools only; no sensitive fields)
 *
 * The parent/student/staff app calls this on the login screen so the user can
 * choose their school, then sends school_id (or school_code) with the login
 * request. Tenant_lib pins the session to that school for all subsequent calls.
 */
class Schools extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('school_model');
    }

    public function list()
    {
        $this->output->set_content_type('application/json');

        $rows = $this->school_model->getAll();
        $out  = array();
        foreach ($rows as $r) {
            if (empty($r['is_active'])) {
                continue;
            }
            $out[] = array(
                'id'   => (int) $r['id'],
                'name' => $r['name'],
                'code' => $r['code'],
            );
        }

        return $this->output
            ->set_status_header(200)
            ->set_output(json_encode(array(
                'status' => true,
                'result' => $out,
                'message' => 'List of schools',
            )));
    }
}
