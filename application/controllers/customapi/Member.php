<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Member extends My_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('media_storage');
        $this->sch_setting_detail = $this->setting_model->getSetting();
    }



    public function index()
    {
        // if (!$this->rbac->hasPrivilege('issue_return', 'can_view')) {
        //     access_denied();
        // }
        $this->output->set_content_type('application/json');
        $id = $this->input->post('id', TRUE);
        $staff_id = $this->input->post('StaffID', TRUE);
        $date = $this->input->post('date', TRUE);
        $this->loginThoughID($id);

        // $this->session->set_userdata('top_menu', 'Library');
        // $this->session->set_userdata('sub_menu', 'member/index');
        $data['title']      = 'Member';
        $data['title_list'] = 'Members';
        $memberList         = $this->librarymember_model->get();

        $superadmin_visible = $this->customlib->superadmin_visible();

        if ($superadmin_visible == 'disabled') {
            $getStaffRole = $this->customlib->getStaffRole();
            $staffrole    = json_decode($getStaffRole);

            if ($staffrole->id != 7) {
                foreach ($memberList as $key => $member) {
                    if ($member['member_type'] != "student") {
                        $getrole = $this->staff_model->getAll($member['staff_id']);

                        if ($getrole['role_id'] != 7) {
                            $result[] = $member;
                        }

                    } else {
                        $result[] = $member;
                    }
                }
            } else {
                $result = $memberList;
            }
        } else {
            $result = $memberList;
        }

        $data['memberList']  = $result;
        $data['sch_setting'] = $this->sch_setting_detail;

        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => "Approved Leave List ",
                        'data' => $data
                    ]));

        // $this->load->view('layout/header');
        // $this->load->view('admin/librarian/index', $data);
        // $this->load->view('layout/footer');
    }

    public function issue($id = null)
    {
        if (!$this->rbac->hasPrivilege('issue_return', 'can_view')) {
            access_denied();
        }

        if (empty($id)) {
            $id = $this->input->post('id', true);
        }
        if (empty($id)) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => 'Record id is required.',
            ]));
        }

        $this->session->set_userdata('top_menu', 'Library');
        $this->session->set_userdata('sub_menu', 'member/index');
        $data['title']        = 'Member';
        $data['title_list']   = 'Members';
        $memberList           = $this->librarymember_model->getByMemberID($id);
        $data['memberList']   = $memberList;
        $issued_books         = $this->bookissue_model->getMemberBooks($id);
        $data['issued_books'] = $issued_books;
        $bookList             = $this->book_model->get();
        
        $this->form_validation->set_rules('return_date', $this->lang->line('due_return_date'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('book_id', $this->lang->line('books'), array('required', array('check_exists', array($this->bookissue_model, 'valid_check_exists')),
        )
        );
        if ($this->form_validation->run() == false) {

        } else {
            $member_id = $this->input->post('member_id');
            $data      = array(
                'book_id'        => $this->input->post('book_id'),
                'duereturn_date' => date('Y-m-d', $this->customlib->datetostrtotime($this->input->post('return_date'))),
                'issue_date'     => date('Y-m-d'),
                'member_id'      => $this->input->post('member_id'),
            );
            $this->bookissue_model->add($data);
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Book issued successfully.',
                'data' => $data,
            ]));
        }


        $data['bookList']     = $bookList;

        $data['sch_setting'] = $this->sch_setting_detail;
        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Member issue details loaded successfully.',
            'data' => $data,
        ]));
    }

    public function bookreturn()
    {
        $this->form_validation->set_rules('id', $this->lang->line('id'), 'required|trim|xss_clean');
        $this->form_validation->set_rules('member_id', $this->lang->line('member_id'), 'required|trim|xss_clean');
        $this->form_validation->set_rules('date', $this->lang->line('return_date'), 'required|trim|xss_clean');
        if ($this->form_validation->run() == false) {
            $data = array(
                'id'        => form_error('id'),
                'member_id' => form_error('member_id'),
                'date'      => form_error('date'),
            );
            $array = array('status' => 'fail', 'error' => $data);
            echo json_encode($array);
        } else {
            $id        = $this->input->post('id');
            $member_id = $this->input->post('member_id');
            $date      = date('Y-m-d', $this->customlib->datetostrtotime($this->input->post('date')));
            $data      = array(
                'id'          => $id,
                'return_date' => $date,
                'is_returned' => 1,
            );
            $this->bookissue_model->update($data);

            $array = array('status' => 'success', 'error' => '', 'message' => $this->lang->line('success_message'));
            echo json_encode($array);
        }
    }

    public function student()
    {
        if (!$this->rbac->hasPrivilege('add_student', 'can_view')) {
            access_denied();
        }
        $this->session->set_userdata('top_menu', 'Library');
        $this->session->set_userdata('sub_menu', 'member/student');
        $data['title']     = 'Student Search';
        $class             = $this->class_model->get();
        $data['classlist'] = $class;
        $button            = $this->input->post('search');
        if ($this->input->server('REQUEST_METHOD') == "GET") {
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Student search options loaded successfully.',
                'data' => $data,
            ]));
        } else {
            $class       = $this->input->post('class_id');
            $section     = $this->input->post('section_id');
            $search      = $this->input->post('search');
            $search_text = $this->input->post('search_text');
            if (isset($search)) {
                if ($search == 'search_filter') {
                    $this->form_validation->set_rules('class_id', $this->lang->line('class'), 'trim|required|xss_clean');
                    if ($this->form_validation->run() == false) {

                    } else {
                        $data['searchby']    = "filter";
                        $data['class_id']    = $this->input->post('class_id');
                        $data['section_id']  = $this->input->post('section_id');
                        $data['search_text'] = $this->input->post('search_text');
                        $resultlist          = $this->student_model->searchLibraryStudent($class, $section);

                        $data['resultlist'] = $resultlist;
                    }
                } else if ($search == 'search_full') {
                    $data['searchby']    = "text";
                    $data['class_id']    = $this->input->post('class_id');
                    $data['section_id']  = $this->input->post('section_id');
                    $data['search_text'] = trim($this->input->post('search_text'));
                    $resultlist          = $this->student_model->searchFullText($search_text);
                    $data['resultlist']  = $resultlist;
                }
            }
            $data['sch_setting'] = $this->sch_setting_detail;
            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Student search results loaded successfully.',
                'data' => $data,
            ]));
        }
    }

    public function add()
    {
        if ($this->input->post('library_card_no') != "") {

            $this->form_validation->set_rules('library_card_no', $this->lang->line('library_card_number'), 'required|trim|xss_clean|callback_check_cardno_exists');
            if ($this->form_validation->run() == false) {
                $data = array(
                    'library_card_no' => form_error('library_card_no'),
                );
                $array = array('status' => 'fail', 'error' => $data);
                echo json_encode($array);
            } else {
                $library_card_no = $this->input->post('library_card_no');
                $student         = $this->input->post('member_id');
                $data            = array(
                    'member_type'     => 'student',
                    'member_id'       => $student,
                    'library_card_no' => $library_card_no,
                );

                $inserted_id = $this->librarymanagement_model->add($data);
                $array       = array('status' => 'success', 'error' => '', 'message' => $this->lang->line('success_message'), 'inserted_id' => $inserted_id, 'library_card_no' => $library_card_no);
                echo json_encode($array);
            }
        } else {
            $library_card_no = $this->input->post('library_card_no');
            $student         = $this->input->post('member_id');
            $data            = array(
                'member_type'     => 'student',
                'member_id'       => $student,
                'library_card_no' => $library_card_no,
            );

            $inserted_id = $this->librarymanagement_model->add($data);
            $array       = array('status' => 'success', 'error' => '', 'message' => $this->lang->line('success_message'), 'inserted_id' => $inserted_id, 'library_card_no' => $library_card_no);
            echo json_encode($array);
        }
    }

    public function check_cardno_exists()
    {
        $data['library_card_no'] = $this->security->xss_clean($this->input->post('library_card_no'));

        if ($this->librarymanagement_model->check_data_exists($data)) {
            $this->form_validation->set_message('check_cardno_exists', $this->lang->line('card_no_already_exists'));
            return false;
        } else {
            return true;
        }
    }

    public function teacher()
    {
        $this->session->set_userdata('top_menu', 'Library');
        $this->session->set_userdata('sub_menu', 'Library/member/teacher');
        $data['title']       = 'Add Teacher';
        $data['teacherlist'] = $this->teacher_model->getLibraryTeacher(); 
        $data['genderList'] = $this->customlib->getGender();
        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Library teacher list loaded successfully.',
            'data' => $data,
        ]));
    }

    public function addteacher()
    {
        if ($this->input->post('library_card_no') != "") {
            $this->form_validation->set_rules('library_card_no', $this->lang->line('library_card_number'), 'required|trim|xss_clean|callback_check_cardno_exists');
            if ($this->form_validation->run() == false) {
                $data = array(
                    'library_card_no' => form_error('library_card_no'),
                );
                $array = array('status' => 'fail', 'error' => $data);
                echo json_encode($array);
            } else {
                $library_card_no = $this->input->post('library_card_no');
                $student         = $this->input->post('member_id');
                $data            = array(
                    'member_type'     => 'teacher',
                    'member_id'       => $student,
                    'library_card_no' => $library_card_no,
                );

                $inserted_id = $this->librarymanagement_model->add($data);
                $array       = array('status' => 'success', 'error' => '', 'message' => $this->lang->line('success_message'), 'inserted_id' => $inserted_id, 'library_card_no' => $library_card_no);
                echo json_encode($array);
            }
        } else {
            $library_card_no = $this->input->post('library_card_no');
            $student         = $this->input->post('member_id');
            $data            = array(
                'member_type'     => 'teacher',
                'member_id'       => $student,
                'library_card_no' => $library_card_no,
            );

            $inserted_id = $this->librarymanagement_model->add($data);
            $array       = array('status' => 'success', 'error' => '', 'message' => $this->lang->line('success_message'), 'inserted_id' => $inserted_id, 'library_card_no' => $library_card_no);
            echo json_encode($array);
        }
    }

    public function surrender()
    {
        $this->form_validation->set_rules('member_id', $this->lang->line('book'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $member_id = $this->input->post('member_id');
              $row_affected=$this->librarymember_model->surrender($member_id);
            $array = array('status' => 'success', 'row_affected'=>$row_affected, 'error' => '', 'message' => $this->lang->line('success_message'));
            echo json_encode($array);
        }
    }

    private function loginThoughID($id){

        $result = $this->staff_model->staffDatabyID($id);
        if(!$result){

        return $this->output->set_output(json_encode([
                        'status' => false,
                        'error_message' => "Invalid"
                    ]));

        }
        $setting_result        = $this->setting_model->get();
        if (!empty($result->language_id)) {
                    $lang_array = array('lang_id' => $result->language_id, 'language' => $result->language);
                    if ($result->is_rtl == 1) {
                        $is_rtl = "enabled";
                    } else {
                        $is_rtl = "disabled";
                    }

                } else {
                    $lang_array = array('lang_id' => $setting_result[0]['lang_id'], 'language' => $setting_result[0]['language']);
                    if ($setting_result[0]['is_rtl'] == 1) {
                        $is_rtl = "enabled";
                    } else {
                        $is_rtl = "disabled";
                    }
                }

                if ($result) {
                    if ($result->is_active) {
                        if ($result->surname != "") {
                            $logusername = $result->name . " " . $result->surname;
                        } else {
                            $logusername = $result->name;
                        }

                        $session_data = array(
                            'id'                     => $result->id,
                            'username'               => $logusername,
                            'email'                  => $result->email,
                            'image'                  =>$result->image,
                            'roles'                  => $result->roles,
                            'date_format'            => $setting_result[0]['date_format'],                        
                            'currency'               => ($result->currency == 0) ? $setting_result[0]['currency']: $result->currency,
                            'currency_base_price'    => ($result->base_price == 0) ? $setting_result[0]['base_price']: $result->base_price,
                            'currency_format'        => $setting_result[0]['currency_format'],
                            'currency_symbol'        => ($result->symbol == "0") ? $setting_result[0]['currency_symbol'] : $result->symbol,
                            'currency_place'         => $setting_result[0]['currency_place'],
                            'start_month'            => $setting_result[0]['start_month'],
                            'start_week'             => date("w", strtotime($setting_result[0]['start_week'])),
                            'school_name'            => $setting_result[0]['name'],
                            'timezone'               => $setting_result[0]['timezone'],
                            'sch_name'               => $setting_result[0]['name'],
                            'language'               => $lang_array,
                            'is_rtl'                 => $is_rtl,
                            'theme'                  => $setting_result[0]['theme'],
                            'gender'                 => $result->gender,                     
                            'db_array'               => ['base_url'               => $setting_result[0]['base_url'],
                                                        'folder_path'            => $setting_result[0]['folder_path'],
                                                        'db_group'=>'default'
                                                        ],
                            'superadmin_restriction' => $setting_result[0]['superadmin_restriction'],
                            'saas_key'               => $setting_result[0]['saas_key'],
                            'admin_panel_whatsapp'   		=> $setting_result[0]['admin_panel_whatsapp'],
                            'admin_panel_whatsapp_mobile'   => $setting_result[0]['admin_panel_whatsapp_mobile'],
                            'admin_panel_whatsapp_from'   	=> $setting_result[0]['admin_panel_whatsapp_from'],
                            'admin_panel_whatsapp_to'  		=> $setting_result[0]['admin_panel_whatsapp_to'],						
                        );

                        $this->session->set_userdata('admin', $session_data);

                        $role      = $this->customlib->getStaffRole();
                        $role_name = json_decode($role)->name;

                        $this->customlib->setUserLog($this->input->post('username'), $role_name);
                    }
                }
    }


}
