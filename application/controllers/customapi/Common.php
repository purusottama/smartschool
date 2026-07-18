<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Common extends Public_Controller
{

    public function __construct()
    {
        parent::__construct();
		$this->load->library('media_storage');
		$this->load->model(array("student_edit_field_model", 'marksdivision_model', 'offlinePayment_model','module_model','setting_model'));
		
        $this->payment_method     = $this->paymentsetting_model->getActiveMethod();
        $this->sch_setting_detail = $this->setting_model->getSetting();
        
        $this->config->load('mailsms');
        $this->load->model("studentAppliedDiscount_model");
        $this->load->helper('custom_helper');
        $this->result = $this->customlib->getLoggedInUserData();
    }

    

    public function getStudentSessionClasses()
    {


     $user_id      = $this->input->post('user_id',TRUE);
        $user = $this->db->where('id', $user_id)->get('users')->row();
        if(!$user){
            return $this->output
            ->set_status_header(401)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'Invalid Data'
            ]));
        }

        $this->locallogin($user->username,$user->password);

    
        $data = array();
     $role         = $this->customlib->getUserRole();
        $data['role'] = $role;
        if ($role == "student") {
            $student_id             = $this->customlib->getStudentSessionUserID();
            $data['studentclasses'] = $this->studentsession_model->searchMultiClsSectionByStudent($student_id);
        } elseif ($role == "parent") {
            $parent_id              = $this->customlib->getUsersID();
            $data['studentclasses'] = $this->student_model->getParentChilds($parent_id);
        }
		$data['sch_setting'] = $this->sch_setting_detail;

         return $this->output
            ->set_status_header(200)
            ->set_output(json_encode([
                'status'  => true,
                'result' => $data,
                'message' => 'List Of student'
            ]));

print_r($data);
exit();
       
        
        $role         = $user->role;
        $data['role'] = $role;
        if ($role == "student") {
            $student_id             = $user->id;
            $data['studentclasses'] = $this->studentsession_model->searchMultiClsSectionByStudent($student_id);
        } elseif ($role == "parent") {
            $parent_id              = $user->id;
            $data['studentclasses'] = $this->student_model->getParentChilds($parent_id);
        }
		//$data['sch_setting'] = $this->sch_setting_detail;
       
         return $this->output
            ->set_status_header(200)
            ->set_output(json_encode([
                'status'  => true,
                'result' => $data,
                'message' => 'List Of student'
            ]));

     
    }

    public function getStudentProfiles(){
        $user_id      = $this->input->post('user_id',TRUE);
        $user = $this->db->where('id', $user_id)->get('users')->row();
        if(!$user){
            return $this->output
            ->set_status_header(401)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'Invalid Data'
            ]));
        }

         $student_id             = $this->input->post('student_id',TRUE);

          //$student_session_id = $this->input->post('clschg');

            $student        = $this->student_model->getByStudentSession($student_id);
           
            $logged_In_User = $this->customlib->getLoggedInUserData();

            
            $logged_In_User['student_id'] = $student['id'];

            $current_class = $this->session->has_userdata('current_class');
            if ($current_class) {
                $this->session->unset_userdata('current_class');
            }

            $this->session->set_userdata('student', $logged_In_User);
            $student_current_class = array('class_id' => $student['class_id'], 'section_id' => $student['section_id'], 'student_session_id' => $student['student_session_id']);
            $this->session->set_userdata('current_class', $student_current_class);


        $this->session->set_userdata('top_menu', 'my_profile');
        $student_id            = $this->customlib->getStudentSessionUserID();
        $student_current_class = $this->customlib->getStudentCurrentClsSection();
        $marks_division        = $this->marksdivision_model->get();
        $student               = $this->student_model->getStudentByClassSectionID($student_current_class->class_id, $student_current_class->section_id, $student_id);
        
       
        $superadmin_visible =    $this->Setting_model->get();      

        $data                   = array();
        $data['superadmin_restriction'] =   $superadmin_visible[0]['superadmin_restriction'];
        $data['marks_division'] = $marks_division;

        

        if (!empty($student)) {
            $transport_fees=[];

            $student_session_id           = $student_current_class->student_session_id;
            $gradeList                    = $this->grade_model->get();
            $student_due_fee              = $this->studentfeemaster_model->getStudentFees($student_session_id);
            $student_discount_fee         = $this->feediscount_model->getStudentFeesDiscount($student_session_id);
            $data['student_discount_fee'] = $student_discount_fee;
            
            $data['student_due_fee']      = $student_due_fee;
            $timeline                     = $this->timeline_model->getStudentTimeline($student["id"], $status = 'yes');
            $data["timeline_list"]        = $timeline;
            $data['sch_setting']          = $this->sch_setting_detail;
            $data['adm_auto_insert']      = $this->sch_setting_detail->adm_auto_insert;
            $data['examSchedule']         = array();
            $data['exam_result']          = $this->examgroupstudent_model->searchStudentExams($student['student_session_id'], true, true);
            $ss                           = $this->grade_model->getGradeDetails();
            $data['exam_grade']           = $this->grade_model->getGradeDetails();
            $student_doc                  = $this->student_model->getstudentdoc($student_id);
            $data['student_doc']          = $student_doc;
            $data['student_doc_id']       = $student_id;
            $category_list                = $this->category_model->get();
            $data['category_list']        = $category_list;
            $data['gradeList']            = $gradeList;
            $data['student']              = $student;

            $startmonth = $this->setting_model->getStartMonth();

            $monthlist         = $this->customlib->getMonthNoDropdown($startmonth);
            $data["monthlist"] = $monthlist;
 

            
            $attendencetypes = $this->attendencetype_model->getAttType();
            $data['attendencetypeslist'] = $attendencetypes;

            $year = date("Y");

            $input       = $this->setting_model->getCurrentSessionName();
            list($a, $b) = explode('-', $input);
            $start_year  = $a;
            if (strlen($b) == 2) {
                $Next_year = substr($a, 0, 2) . $b;
            } else {
                $Next_year = $b;
            }

           
            $start_end_month = $this->startmonthandend();

            $session_year_start = date("Y-m-01", strtotime($start_year . '-' . $start_end_month[0] . '-01'));
            $session_year_end   = date("Y-m-t", strtotime($Next_year . '-' . $start_end_month[1] . '-01'));

            

            $countAttendance = $this->countAttendance($session_year_start, $student['student_session_id']);
          
            $st = $start_year;

           
            foreach ($monthlist as $key => $value) {

                $datemonth = $key;

                if ($datemonth < $this->sch_setting_detail->start_month) {
                    $st = $Next_year;
                }

                $date_each_month = date($st . '-' . $datemonth . '-01');
                $date_end        = date('t', strtotime($date_each_month));
                for ($n = 1; $n <= $date_end; $n++) {
                    $att_date           = sprintf("%02d", $n);
                    $attendence_array[] = $att_date;

                    $att_dates = $st . "-" . $datemonth . "-" . sprintf("%02d", $n);

                    $date_array[]    = $att_dates;                 
                
                    $student_date_attendance=$this->stuattendence_model->studentattendance($att_dates, $student['student_session_id']);
                    $res[$att_dates]=[];
                    if($student_date_attendance){
                        $res[$att_dates] = $student_date_attendance;
                    }           
                }
            }

            $data["session_year_start"] = $session_year_start;
            $data["session_year_end"]   = $session_year_end;
            $data["countAttendance"]    = $countAttendance;
            $data["resultlist"]         = $res;
            $data["start_year"]         = $start_year;
            $data["Next_year"]          = $Next_year;
            $transport_fees=[];
            $module=$this->module_model->getPermissionByModulename('transport');
                if($module['is_active']){

                       $transport_fees         = $this->studentfeemaster_model->getStudentTransportFeesByStudentSessionId($student_session_id, $student['route_pickup_point_id']);
                   
                }

                 $data['transport_fees'] = $transport_fees;

        //------- Behaviour Report Start--------
            if($this->module_lib->hasModule('behaviour_records') && $this->studentmodule_lib->hasActive('behaviour_records') ){ 
           
                $this->load->model("studentincidents_model");
                // This is used to get total points of student by student id 
                $total_points = $this->studentincidents_model->totalpoints($student_id);
                $student['total_points'] = $total_points['totalpoints'];
        
            }
        //------- Behaviour Report End----------

            $data['student']              = $student;

        }else{
            // redirect('site/logout');
             return $this->output
            ->set_status_header(401)
            ->set_output(json_encode([
                'status'  => false,
                'message' => 'Invalid Data'
            ]));
        }        
         
        
        //------- Behaviour Report Start--------
        if ($this->module_lib->hasModule('behaviour_records')) {
            
            $this->load->model("studentincidents_model");
            
            // This is used to get assign incident record of student by student id
            $data['assignstudent'] = $this->studentincidents_model->studentbehaviour($student_id);
            
            $this->load->model('studentbehaviour_model');
            $data['behavioursetting'] = $this->studentbehaviour_model->getsettings();
            $data['role']    = $this->customlib->getUserRole(); 
        }               
        //------- Behaviour Report End----------       

        $unread_notifications = $this->notification_model->getUnreadStudentNotification();
        $notification_bydate  = array();

        foreach ($unread_notifications as $unread_notifications_key => $unread_notifications_value) {
            if (date($this->customlib->getSchoolDateFormat()) >= date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($unread_notifications_value->publish_date))) {
                $notification_bydate[] = $unread_notifications_value;
            }
        }

        $setting_data                 = $this->setting_model->get();
        $data['student_timeline']     = $setting_data[0]['student_timeline'];
        $data['unread_notifications'] = $notification_bydate;
        $login_id           = $this->customlib->getStudentSessionUserID();
        $data['student_id'] = $login_id;
        
        
        // ------------- CBSE Exam Start ---------------------
        if ($this->module_lib->hasModule('cbseexam')) {
            
            $this->load->model("cbseexam/cbseexam_exam_model"); 
            $this->load->model("cbseexam/cbseexam_grade_model"); 
            $this->load->model("cbseexam/cbseexam_assessment_model");            
            
            $exam_list = $this->cbseexam_exam_model->getStudentExamByStudentSession($student_current_class->student_session_id);
    
            $student_exams = [];
            if (!empty($exam_list)) {
                foreach ($exam_list as $exam_key => $exam_value) {                
                
                    $exam_subjects = $this->cbseexam_exam_model->getexamsubjects($exam_value->cbse_exam_id);
                    $exam_value->{"subjects"} = $exam_subjects;
                    $exam_value->{"grades"} = $this->cbseexam_grade_model->getGraderangebyGradeID($exam_value->cbse_exam_grade_id);
                    $exam_value->{"exam_assessments"} = $this->cbseexam_assessment_model->getWithAssessmentTypeByAssessmentID($exam_value->cbse_exam_assessment_id);                
                    $exam_value->{"exam_subject_assessments"} = $this->cbseexam_assessment_model->getSubjectAssessmentsByExam($exam_subjects);
                    
                    $cbse_exam_result = $this->cbseexam_exam_model->getStudentResultByExamId($exam_value->cbse_exam_id, [$exam_value->student_session_id]);
                
                    $students = [];
                    $student_rank="";
    
                    if (!empty($cbse_exam_result)) {
    
                        foreach ($cbse_exam_result as $student_key => $student_value) {
                            $student_rank=$student_value->rank;
                    
                            if (!empty($students)) {
    
                                if (!array_key_exists($student_value->subject_id, $students['subjects'])) {
    
                                    $new_subject = [
                                        'subject_id' => $student_value->subject_id,
                                        'subject_name' => $student_value->subject_name,
                                        'subject_code' => $student_value->subject_code,
                                        'exam_assessments' => [
                                            $student_value->cbse_exam_assessment_type_id => [
                                                'cbse_exam_assessment_type_name' => $student_value->cbse_exam_assessment_type_name,
                                                'cbse_exam_assessment_type_id' => $student_value->cbse_exam_assessment_type_id,
                                                'cbse_exam_assessment_type_code' => $student_value->cbse_exam_assessment_type_code,
                                                'maximum_marks' => $student_value->maximum_marks,
                                                'cbse_student_subject_marks_id' => $student_value->cbse_student_subject_marks_id,
                                                'marks' => $student_value->marks,
                                                'note' => $student_value->note,
                                                'is_absent' => $student_value->is_absent,
                                            ],
                                        ],
                                    ];
    
                                    $students['subjects'][$student_value->subject_id] = $new_subject;
    
                                } elseif (!array_key_exists($student_value->cbse_exam_assessment_type_id, $students['subjects'][$student_value->subject_id]['exam_assessments'])) {
    
                                    $new_assesment = [
                                        'cbse_exam_assessment_type_name' => $student_value->cbse_exam_assessment_type_name,
                                        'cbse_exam_assessment_type_id' => $student_value->cbse_exam_assessment_type_id,
                                        'cbse_exam_assessment_type_code' => $student_value->cbse_exam_assessment_type_code,
                                        'maximum_marks' => $student_value->maximum_marks,
                                        'cbse_student_subject_marks_id' => $student_value->cbse_student_subject_marks_id,
                                        'marks' => $student_value->marks,
                                        'note' => $student_value->note,
                                        'is_absent' => $student_value->is_absent,
                                    ];
    
                                    $students['subjects'][$student_value->subject_id]['exam_assessments'][$student_value->cbse_exam_assessment_type_id] = $new_assesment;
                                }
    
                            } else {
                            
                                $students['subjects'] = [
                                    $student_value->subject_id => [
                                        'subject_id' => $student_value->subject_id,
                                        'subject_name' => $student_value->subject_name,
                                        'subject_code' => $student_value->subject_code,
                                        'exam_assessments' => [
                                            $student_value->cbse_exam_assessment_type_id => [
                                                'cbse_exam_assessment_type_name' => $student_value->cbse_exam_assessment_type_name,
                                                'cbse_exam_assessment_type_id' => $student_value->cbse_exam_assessment_type_id,
                                                'cbse_exam_assessment_type_code' => $student_value->cbse_exam_assessment_type_code,
                                                'maximum_marks' => $student_value->maximum_marks,
                                                'cbse_student_subject_marks_id' => $student_value->cbse_student_subject_marks_id,
                                                'marks' => $student_value->marks,
                                                'note' => $student_value->note,
                                                'is_absent' => $student_value->is_absent,
    
                                            ],
    
                                        ],
                                    ],
    
                                ];
    
                            }
                        }
                    }
                    $exam_value->{"rank"} = $student_rank;
                    $exam_value->{"exam_data"} = $students;
    
                }
            }
    
            $data['exams'] = $exam_list;
        }

        return $this->output
            ->set_status_header(200)
            ->set_output(json_encode([
                'status'  => true,
                'result' => $data,
                'message' => 'List Of student'
            ]));
        // ------------- CBSE Exam End---------------------
        
    }
     public function startmonthandend()
    {
        $startmonth = $this->setting_model->getStartMonth();
        if ($startmonth == 1) {
            $endmonth = 12;
        } else {
            $endmonth = $startmonth - 1;
        }
        return array($startmonth, $endmonth);
    }

    public function countAttendance($session_year_start, $student_session_id)
    {
        $attendencetypes = $this->attendencetype_model->getAttType();

        $record = array();
        foreach ($attendencetypes as $type_key => $type_value) {
            $record[$type_value['id']] = 0;
        }

        for ($i = 1; $i <= 12; $i++) {
            
            $start_month = date('Y-m-d', strtotime($session_year_start));
            $end_month = date('Y-m-t', strtotime($session_year_start));
            $session_year_start = date('Y-m-d', strtotime('+1 month', strtotime($session_year_start)));
            $attendences = $this->stuattendence_model->student_attendence_bw_date($start_month, $end_month, $student_session_id);

            if (!empty($attendences)) {
                foreach ($attendences as $attendence_key => $attendence_value) {
                    $record[$attendence_value->attendence_type_id] += 1;
                }
            }
        }
        return $record;
    }

    public function getStudentFee(){

        $student_id             = $this->input->post('student_id',TRUE);

        $this->checkandsetloginID($student_id);

        $id                    = $this->customlib->getStudentSessionUserID();
        $student_current_class = $this->customlib->getStudentCurrentClsSection();

        $this->session->set_userdata('top_menu', 'fees');
        $this->session->set_userdata('sub_menu', 'student/getFees');
        $category                = $this->category_model->get();
       // $data['categorylist']    = $category;
       // $data['sch_setting']     = $this->sch_setting_detail;
       // $data['adm_auto_insert'] = $this->sch_setting_detail->adm_auto_insert;
       // $paymentoption           = $this->customlib->checkPaypalDisplay();
        //$data['paymentoption']   = $paymentoption;
        $data['payment_method']  = false;
        if (!empty($this->payment_method)) {
            $data['payment_method'] = true;
        }

        $student_id = $id;
        $student    = $this->student_model->getStudentByClassSectionID($student_current_class->class_id, $student_current_class->section_id, $student_id);

        $class_id                     = $student_current_class->class_id;
        $section_id                   = $student_current_class->section_id;
        $data['title']                = 'Student Details';
        $student_due_fee              = $this->studentfeemaster_model->getStudentFees($student_current_class->student_session_id);
        foreach($student_due_fee as $key => $val){
            if($val->fees){
                foreach($val->fees as $k => $v){
                    $student_due_fee[$key]->fees[$k]->amount_detail = json_decode($v->amount_detail,true);
                }
        
            }
           
        }
       
        $student_discount_fee         = $this->feediscount_model->getStudentFeesDiscount($student_current_class->student_session_id);
        $data['student_discount_fee'] = $student_discount_fee;

        $data['student_due_fee']      = $student_due_fee;
        $data['student']              = $student;
        $transport_fees=[];
        $module=$this->module_model->getPermissionByModulename('transport');
        if($module['is_active']){

            $transport_fees               = $this->studentfeemaster_model->getStudentTransportFeesByStudentSessionId($student_current_class->student_session_id, $student['route_pickup_point_id']);
        }     

        $data['transport_fees'] = $transport_fees;
        $student_processing_fee = $this->studentfeemaster_model->getStudentProcessingFees($student_current_class->student_session_id);

        $data['student_processing_fee'] = false;

        foreach ($student_processing_fee as $key => $processing_value) {
            if (!empty($processing_value->fees)) {
                $data['student_processing_fee'] = true;
            }
        }

        return $this->output
            ->set_status_header(200)
            ->set_output(json_encode([
                'status'  => true,
                'result' => $data,
                'message' => 'List Of student'
            ]));

    }

    public function timetable(){
        
         $student_id             = $this->input->post('student_id',TRUE);
        $this->checkandsetloginID($student_id);

        $student_current_class = $this->customlib->getStudentCurrentClsSection();
        $student_id = $this->customlib->getStudentSessionUserID();
        $student = $this->student_model->get($student_id);
        $days = $this->customlib->getDaysname();
        $days_record = array();
        foreach ($days as $day_key => $day_value) {
            $days_record[$day_key] = $this->subjecttimetable_model->getparentSubjectByClassandSectionDay($student_current_class->class_id, $student_current_class->section_id, $day_key);
           
        }
        $data['timetable'] = $days_record;

        return $this->output
            ->set_status_header(200)
            ->set_output(json_encode([
                'status'  => true,
                'result' => $data,
                'message' => 'List Of time table'
            ]));


    }

    public function onlineexam(){
         $student_id             = $this->input->post('student_id',TRUE);
        $this->checkandsetloginID($student_id);

        
        $student_current_class = $this->customlib->getStudentCurrentClsSection();
        $student_session_id    = $student_current_class->student_session_id;
        $onlineexam            = $this->onlineexam_model->getStudentexam($student_session_id);
        $data['onlineexam']    = $onlineexam;

       

        return $this->output
            ->set_status_header(200)
            ->set_output(json_encode([
                'status'  => true,
                'result' => $data,
                'message' => 'List Of time table'
            ]));


    }

    public function closedexam(){
         //closed exam
          $student_id             = $this->input->post('student_id',TRUE);
        $this->checkandsetloginID($student_id);

         $student_current_class = $this->customlib->getStudentCurrentClsSection();
        $student_session_id    = $student_current_class->student_session_id;
        $questionList          = $this->onlineexam_model->getstudentclosedexamlist($student_session_id);
       
        $m                     = json_decode($questionList);
        $currency_symbol       = $this->customlib->getSchoolCurrencyFormat();
        $dt_data               = array();
        if (!empty($m->data)) {
            foreach ($m->data as $key => $value) {
                $viewbtn = '';

                $title = $value->exam;

              
                if ($value->description == "") {
                    $description =  $this->lang->line('no_description');
                } else {
                    $description =  $value->description ;
                }
                if ($value->is_quiz) {
                    $is_quiz =  $this->lang->line('yes');
                } else {
                    $is_quiz =  $this->lang->line('no');
                }

               // $viewbtn = " <a href=" . base_url() . 'user/onlineexam/view/' . $value->id . " class='btn btn-default btn-xs' data-toggle='tooltip'  title=" . $this->lang->line('view') . " '   ><i class='fa fa fa-eye'></i></a>";
                $row     = array();
                $row['title']   = $title . $description;
                $row['is_quiz']   = $is_quiz;
                $row['exam_from']   = $this->customlib->dateyyyymmddToDateTimeformat($value->exam_from, false);
                $row['exam_to']   = $this->customlib->dateyyyymmddToDateTimeformat($value->exam_to, false);
                $row['duration']   = $value->duration;
                $row['attempt']   = $value->attempt;
                $row['counter']   = $value->counter;

                if ($value->publish_result) {
                    $row['available'] = $this->lang->line('result_published');
                } else {
                    $row['available'] = $this->lang->line('available');
                }
               // $row[] = $viewbtn;

                $dt_data[] = $row;
            }
        }

        $json_data = array(
            "draw"            => intval($m->draw),
            "recordsTotal"    => intval($m->recordsTotal),
            "recordsFiltered" => intval($m->recordsFiltered),
            "data"            => $dt_data,
        );
        echo json_encode($json_data);
        exit();
    }
    public function attendence(){

        $student_id             = $this->input->post('student_id',TRUE);
        $this->checkandsetloginID($student_id);
        $date['start']         = $this->input->post('start');
        $date['end']           = $this->input->post('end');
         $student_id            = $this->customlib->getStudentSessionUserID();
        $student               = $this->student_model->get($student_id);
        $student_current_class = $this->customlib->getStudentCurrentClsSection();
        $student_session_id    = $student_current_class->student_session_id;

        $result = array();

        $student_attendence_result = $this->attendencetype_model->getStudentAttendenceRange($date, $student_session_id);

        if (!empty($student_attendence_result)) {
            foreach ($student_attendence_result as $key => $student_attendence) {

                $s           = array();
                $s['date']   = $student_attendence->date;
                $s['badge']  = false;
                $s['footer'] = "Extra information";
                $type        = $student_attendence->type;
                $s['title']  = $type;

                if ($type == 'Present') {

                    $eventdata[] = array('title' => $this->lang->line('present'),
                        'start'                      => $s['date'],
                        'end'                        => $s['date'],
                        'description'                => $student_attendence->remark,
                        'id'                         => 0,
                        'backgroundColor'            => '#27ab00',
                        'borderColor'                => '#27ab00',
                        'event_type'                 => 'Present',
                    );
                } else if ($type == 'Absent') {
                    $eventdata[] = array('title' => $this->lang->line('absent'),
                        'start'                      => $s['date'],
                        'end'                        => $s['date'],
                        'description'                => $student_attendence->remark,
                        'id'                         => 0,
                        'backgroundColor'            => '#fa2601',
                        'borderColor'                => '#fa2601',
                        'event_type'                 => 'Absent',
                    );
                } else if ($type == 'Late') {
                    $eventdata[] = array('title' => $this->lang->line('late'),
                        'start'                      => $s['date'],
                        'end'                        => $s['date'],
                        'description'                => $student_attendence->remark,
                        'id'                         => 0,
                        'backgroundColor'            => '#ffeb00',
                        'borderColor'                => '#ffeb00',
                        'event_type'                 => 'Late',
                    );
                } else if ($type == 'Late with excuse') {
                    $eventdata[] = array('title' => $this->lang->line('late_with_excuse'),
                        'start'                      => $s['date'],
                        'end'                        => $s['date'],
                        'description'                => $student_attendence->remark,
                        'id'                         => 0,
                        'backgroundColor'            => '#ffeb00',
                        'borderColor'                => '#ffeb00',
                        'event_type'                 => 'Late with excuse',
                    );
                } else if ($type == 'Holiday') {
                    $eventdata[] = array('title' => $this->lang->line('holiday'),
                        'start'                      => $s['date'],
                        'end'                        => $s['date'],
                        'description'                => $student_attendence->remark,
                        'id'                         => 0,
                        'backgroundColor'            => '#a7a7a7',
                        'borderColor'                => '#a7a7a7',
                        'event_type'                 => 'Holiday',
                    );
                } else if ($type == 'Half Day') {
                    $eventdata[] = array('title' => $this->lang->line('half_day'),
                        'start'                      => $s['date'],
                        'end'                        => $s['date'],
                        'description'                => $student_attendence->remark,
                        'id'                         => 0,
                        'backgroundColor'            => '#fa8a00',
                        'borderColor'                => '#fa8a00',
                        'event_type'                 => 'Half Day',
                    );
                }
                $array[] = $s;
            }
        }

        echo json_encode($eventdata);


    }
    private function checkandsetloginID($user_id){

            $user = $this->db->where('user_id', $user_id)->get('users')->row();
            if(!$user){
                return $this->output->set_status_header(401)
                    ->set_output(json_encode([
                        'status'  => false,
                        'message' => 'Invalid Data'
                    ]));
            }
          
            $this->locallogin($user->username,$user->password);
    }

   private function locallogin($username , $password){

        $school = $this->setting_model->get();

        if($school[0]['student_panel_login']==0) {
            $student_login_status=0;
        }else{
            $student_login_status=1;
        }
        if($school[0]['parent_panel_login']==0){
            $parent_login_status=0;
        }else{
            $parent_login_status=1;
        }

        $this->session->sess_destroy();
        $login_post = array(
                    'username' => $username,
                    'password' => $password,
                );
            
        $login_details         = $this->user_model->checkLogin($login_post);
        
         if (isset($login_details) && !empty($login_details)) {
                $user = $login_details[0];
               

                if ($user->is_active == "yes") {
                    if ($user->role == "student" && $student_login_status==1 ) { //
                        $result = $this->user_model->read_user_information($user->id);
                       

                    } else if ($user->role == "parent"  && $parent_login_status==1 ) { //
                        if ($school[0]['parent_panel_login']) {
                            $result = $this->user_model->checkLoginParent($login_post);
                        } else {
                            $result = false;
                        }
                    }else{
                         $data['error_message'] = $this->lang->line('account_suspended');
                         $result = false;
                    } 

                    if ($result != false) {
                        $setting_result = $this->setting_model->get();
                        if ($result[0]->lang_id == 0) {
                            $language = array('lang_id' => $setting_result[0]['lang_id'], 'language' => $setting_result[0]['language']);
                            if ($setting_result[0]['is_rtl'] == 1) {
                                $is_rtl = "enabled";
                            } else {
                                $is_rtl = "disabled";
                            }
                        } else {
                            $language = array('lang_id' => $result[0]->lang_id, 'language' => $result[0]->language);
                            if ($setting_result[0]['is_rtl'] == 1) {
                                $is_rtl = "enabled";
                            } else {
                                $is_rtl = "disabled";
                            }
                        }
                        $image = '';
                        if ($result[0]->role == "parent") {
                            $username = $result[0]->guardian_name;
                            if ($result[0]->guardian_is == "father") {
                                $image = $result[0]->father_pic;
                            } else if ($result[0]->guardian_is == "mother") {
                                $image = $result[0]->mother_pic;
                            } else if ($result[0]->guardian_is == "other") {
                                $image = $result[0]->guardian_pic;
                            }
                        } elseif ($result[0]->role == "student") {
                            $image        = $result[0]->image;
                            $username     = $this->customlib->getFullName($result[0]->firstname, $result[0]->middlename, $result[0]->lastname, $this->sch_setting->middlename, $this->sch_setting->lastname);
                            $defaultclass = $this->user_model->get_studentdefaultClass($result[0]->user_id);
                           
                            $this->customlib->setUserLog($result[0]->username, $result[0]->role, $defaultclass['id']);
                        }

                        $session_data = array(
                            'id'                     => $result[0]->id,
                            'login_username'         => $result[0]->username,
                            'student_id'             => $student_id =  $result[0]->user_id,
                            'role'                   => $result[0]->role,
                            'username'               => $username,
                            'currency'               => ( $result[0]->currency == 0) ? $setting_result[0]['currency_id']:  $result[0]->currency,
                            'currency_base_price'    => ( $result[0]->base_price == 0) ? $setting_result[0]['base_price']:  $result[0]->base_price,
                            'currency_format'        => $setting_result[0]['currency_format'],
                            'currency_symbol'        => ($result[0]->symbol == "0") ? $setting_result[0]['currency_symbol'] : $result[0]->symbol,
                            'currency_name'          => ($result[0]->currency_name == "0") ? $setting_result[0]['currency'] : $result[0]->currency_name,
                            'currency_place'         => $setting_result[0]['currency_place'],
                            'date_format'            => $setting_result[0]['date_format'],
                            'start_week'             => date("w", strtotime($setting_result[0]['start_week'])),
                            'timezone'               => $setting_result[0]['timezone'],
                            'sch_name'               => $setting_result[0]['name'],
                            'language'               => $language,
                            'is_rtl'                 => $is_rtl,
                            'theme'                  => $setting_result[0]['theme'],
                            'image'                  => $image,
                            'gender'                 => $result[0]->gender,
                            'db_array'               => ['base_url'           => $setting_result[0]['base_url'],
                                                     'folder_path'            => $setting_result[0]['folder_path'],
                                                     'db_group'=>'default'
                                                    ],
                            'superadmin_restriction' => $setting_result[0]['superadmin_restriction'],
							'admin_panel_whatsapp'   		=> $setting_result[0]['admin_panel_whatsapp'],
							'admin_panel_whatsapp_mobile'   => $setting_result[0]['admin_panel_whatsapp_mobile'],
							'admin_panel_whatsapp_from'   	=> $setting_result[0]['admin_panel_whatsapp_from'],
							'admin_panel_whatsapp_to'  		=> $setting_result[0]['admin_panel_whatsapp_to'],	

                        );
                       

                        $this->session->set_userdata('student', $session_data);

                        $student        = $this->student_model->getByStudentSession($student_id);
                        
                        $student_current_class = array('class_id' => $student['class_id'], 'section_id' => $student['section_id'], 'student_session_id' => $student['student_session_id']);
                        $this->session->set_userdata('current_class', $student_current_class);

                        if ($result[0]->role == "parent") {
                            $this->customlib->setUserLog($result[0]->username, $result[0]->role);
                        }
                        
                    } else {
                        $error_messag = $this->lang->line('account_suspended');

                        return $this->output->set_status_header(401)
                    ->set_output(json_encode([
                        'status'  => false,
                        'message' => $error_message
                    ]));
                        
                    }
                } else {
                    $error_message = $this->lang->line('your_account_is_disabled_please_contact_to_administrator');
                    return $this->output->set_status_header(401)
                    ->set_output(json_encode([
                        'status'  => false,
                        'message' => $error_message
                    ]));
                }
            } else {
                $error_message = $this->lang->line('invalid_username_or_password');
                return $this->output->set_status_header(401)
                    ->set_output(json_encode([
                        'status'  => false,
                        'message' => $error_message
                    ]));
            }
   }         

   

   
   
}