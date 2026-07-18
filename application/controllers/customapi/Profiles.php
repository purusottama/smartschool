<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Profiles extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('setting_model');
        $this->load->library('customlib');
    }
}