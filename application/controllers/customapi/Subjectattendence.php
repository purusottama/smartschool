<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Subjectattendence extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->config->load("mailsms");
        $this->load->library('mailsmsconf');
        $this->config_attendance = $this->config->item('attendence');
        $this->load->model("classteacher_model");
        $this->load->model("attendencetype_model");

    }    

    public function reportbydate()
    {
        $this->session->set_userdata('top_menu', 'Attendance');
        $this->session->set_userdata('sub_menu', 'subjectattendence/reportbydate');
        $data                = array();
        $class               = $this->class_model->get('', $classteacher = 'yes');
        $data['classlist']   = $class;
        $data['sch_setting'] = $this->setting_model->getSetting();
        $this->form_validation->set_rules('class_id', $this->lang->line('class'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('section_id', $this->lang->line('section'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('date', $this->lang->line('date'), 'trim|required|xss_clean');

        if ($this->form_validation->run() == true) {
            $class_id                    = $this->input->post('class_id');
            $section_id                  = $this->input->post('section_id');
            $date                        = $this->input->post('date');
            $day                         = date('l', $this->customlib->datetostrtotime($date));
            $resultlist                  = $this->studentsubjectattendence_model->searchByStudentsAttendanceByDate($class_id, $section_id, $day, date('Y-m-d', $this->customlib->datetostrtotime($date)), '');
            $attendencetypes             = $this->attendencetype_model->get();
            $data['attendencetypeslist'] = $attendencetypes;
            $data['resultlist']          = $resultlist;
        } else {
            return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => strip_tags(validation_errors()),
            ]));
        }
        return $this->output->set_output(json_encode([
                    'status' => true,
                    'success_message' => 'Subject attendance report fetched successfully.',
                    'data' => $data,
        ]));
    }

    public function index()
    {
        $this->output->set_content_type('application/json');
        $data['title']      = 'Add Fees Type';
        $data['title_list'] = 'Fees Type List';
        $class              = $this->class_model->get('', $classteacher = 'yes');
        $data['classlist']  = $class;
        $userdata           = $this->customlib->getUserData();
        $carray             = array();

        if (!empty($data["classlist"])) {
            foreach ($data["classlist"] as $ckey => $cvalue) {
                $carray[] = $cvalue["id"];
            }
        }
        $data['class_id']    = "";
        $data['section_id']  = "";
        $data['date']        = "";
        $is_first_time_attendance      = true; //added
        $data['sch_setting'] = $this->setting_model->getSetting();
        
            $class                = $this->input->post('class_id',true);
            $section              = $this->input->post('section_id',true);
            $date                 = $this->input->post('date',true);
            $subject_timetable_id = $this->input->post('subject_timetable_id',true);

            $data['class_id']             = $class;
            $data['section_id']           = $section;
            $data['subject_timetable_id'] = $subject_timetable_id;
            $data['date']                 = $date;
            $search                       = $this->input->post('search',true);
            $holiday                      = $this->input->post('holiday',true);
            
            if ($search == "saveattendence") {
                $session_ary         = $this->input->post('student_session');
              
                $attendance_array=[];
                $absent_student_list=[];

                foreach ($session_ary as $key => $value) {      

                    $attendence_type_id   = $this->input->post('attendencetype' . $value);

                    $absent_config         = $this->config_attendance['absent'];
                    if ($attendence_type_id == $absent_config) {
                        $absent_student_list[] = $value;
                    }else if (
                            ($attendence_type_id == $this->config_attendance["present"]
                            || $attendence_type_id == $this->config_attendance["late"]
                            || $attendence_type_id == $this->config_attendance["half_day"]
                            || $attendence_type_id == $this->config_attendance["half_day_second_shift"] ) && $this->input->post('is_first_time_attendance')
                        ) { //added
                            $present_student_list['student_sessions_id'][$value] = ($value);
                            $present_student_list['in_time'][$value] =$this->input->post("in_time_" . $value);
                    }

                    $attendance_array[] = array(
                        'student_session_id'   => $value,
                        'attendence_type_id'   => $attendence_type_id,
                        'remark'               => $this->input->post("remark" . $value),
                        'subject_timetable_id' => $subject_timetable_id,
                        'date'                 => date('Y-m-d', $this->customlib->datetostrtotime($date)),
                    );
                }
                $this->studentsubjectattendence_model->addorUpdate($attendance_array);            
               
                if (!empty($absent_student_list)) {
                    $timetable = $this->subjecttimetable_model->get($subject_timetable_id);
                    $this->mailsmsconf->mailsms('student_absent_attendence', $absent_student_list, $date, $timetable);
                }
                if (!empty($present_student_list)) {
                    $timetable = $this->subjecttimetable_model->get($subject_timetable_id);
                    $this->mailsmsconf->mailsms('student_present_attendence', $present_student_list, $date, $timetable);
                }

                return $this->output->set_output(json_encode([
                            'status' => true,
                            'success_message' => 'Subject attendance saved successfully.',
                            'data' => $data,
                ]));
            }

            $attendencetypes             = $this->attendencetype_model->get();
            $data['attendencetypeslist'] = $attendencetypes;

            $resultlist = $this->studentsubjectattendence_model->searchAttendenceClassSection($class, $section, $subject_timetable_id, date('Y-m-d', $this->customlib->datetostrtotime($date)));
 
            //added
            if (!empty($resultlist)) {
                foreach ($resultlist as $key => $value) {
                    if (!IsNullOrEmptyString($value['attendence_type_id'])) {
                        $is_first_time_attendance = false;
                    }
                }
            }
            $data['is_first_time_attendance'] = $is_first_time_attendance;
            //added
            $data['resultlist'] = $resultlist;

            return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Get Subject  List",
                        'data' => $data
                    ]));
        
    }

}
