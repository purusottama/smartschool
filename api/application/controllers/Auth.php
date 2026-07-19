<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('auth_model');
    }

    public function login()
    {
        $method = $this->input->server('REQUEST_METHOD');

        if ($method != 'POST') {
            json_output(400, array('status' => 400, 'message' => 'Bad request.'));
        } else {
            $check_auth_client = $this->auth_model->check_auth_client();
            if ($check_auth_client == true) {
                $params   = json_decode(file_get_contents('php://input'), true);
                $username = $params['username'];
                $password = $params['password'];
                $app_key  = $params['deviceToken'];

                // Multi-School (shared-DB): resolve the tenant this login targets.
                // Accept school_id, or school_code (looked up in the schools registry).
                // Falls back to school #1 for backward-compatible single-school installs.
                $school_id = isset($params['school_id']) ? (int) $params['school_id'] : 0;
                if (!$school_id && !empty($params['school_code'])) {
                    $srow = $this->db->where('code', $params['school_code'])->where('is_active', 1)->get('schools')->row();
                    $school_id = $srow ? (int) $srow->id : 0;
                }
                if (!$school_id) {
                    $school_id = 1;
                }

                $response = $this->auth_model->login($username, $password, $app_key, $school_id);
                json_output(200, $response);
            }
        }
    }

}
