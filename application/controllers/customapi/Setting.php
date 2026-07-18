<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Setting extends My_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->output->set_content_type('application/json');
        $data= array();
            $school = [
            [
                "id"   => 1,
                "name" => "Star School",
                "code" => "STS"
            ],
            [
                "id"   => 2,
                "name" => "Star Pre School",
                "code" => "STPS"
            ]
        ];
        $data['school'] = $school;
                return $this->output->set_output(json_encode([
                                'status' => true,
                                'success_message' => "Master School List",
                                'data' => $data
                            ]));
        
    }


}
