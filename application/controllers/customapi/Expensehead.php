<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Expensehead extends My_Controller
{

    public function __construct()
    {
        parent::__construct();
        
        $this->load->library('Customlib');
        $this->load->library('expense_model');
        $this->load->library('media_storage');
        $this->load->library('expensehead_model');
        $this->config->load('app-config');
        $this->load->library("datatables");
    }

    public function index()
    {
        // if (!$this->rbac->hasPrivilege('expense_head', 'can_view')) {
        //     access_denied();
        // }
        $data['title']        = 'Expense Head List';
        $data['categorylist'] = $this->expensehead_model->get();

        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Expense head list fetched successfully.',
            'data' => $data,
        ]));
    }

    public function ajaxSearch()
    {
        $expense_head = $this->expensehead_model->getDatatableExpenseHead();
        $expense_head = json_decode($expense_head);
        $dt_data      = array();

        if (!empty($expense_head->data)) {           

            foreach ($expense_head->data as $exhead_key => $exhead_value) {
                $action = "";
                // if ($this->rbac->hasPrivilege('expense_head', 'can_edit')) {
                //     $action .= "<a href='" . site_url('admin/expensehead/edit/' . $exhead_value->id) . "' class='btn btn-default btn-xs'  data-toggle='tooltip' title='" . $this->lang->line('edit') . "'><i class='fa fa-pencil'></i></a>";
                // }
                // if ($this->rbac->hasPrivilege('expense_head', 'can_delete')) {
                //     $action .= "<a href='" . site_url('admin/expensehead/delete/' . $exhead_value->id) . "' class='btn btn-default btn-xs'  data-toggle='tooltip' title='" . $this->lang->line('delete') . "' onclick='return confirm(" . '"' . $this->lang->line('delete_confirm') . '"' . ");'><i class='fa fa-remove'></i></a>";
                // }
                $row           = array();
                
                $title = $exhead_value->exp_category;// "<a href='#' data-toggle='popover' class='detail_popover'>" . $exhead_value->exp_category . "</a>";

                $row[]     = $title;
                $row[]     = $exhead_value->description;
               // $row[]     = $action;
                $dt_data[] = $row;
            }

        }
        $json_data = array(
            "draw"            => intval($expense_head->draw),
            "recordsTotal"    => intval($expense_head->recordsTotal),
            "recordsFiltered" => intval($expense_head->recordsFiltered),
            "data"            => $dt_data,
        );
        return $this->output->set_output(json_encode([
                        'status' => true,
                        'success_message' => " List",
                        'data' => $json_data
                    ]));
        //echo json_encode($json_data);

    }

    public function view($id = null)
    {
        if (!$this->rbac->hasPrivilege('expense_head', 'can_view')) {
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

        $data['title']    = $this->lang->line('expense_head_list');
        $category         = $this->expensehead_model->get($id);
        $data['category'] = $category;

        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Expense head details fetched successfully.',
            'data' => $data,
        ]));
    }

    public function delete($id = null)
    {
        if (!$this->rbac->hasPrivilege('expense_head', 'can_delete')) {
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

        $data['title'] = 'Expense Head List';
        $this->expensehead_model->remove($id);

        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Expense head deleted successfully.',
            'data' => array('id' => $id),
        ]));
    }

    public function create()
    {
        if (!$this->rbac->hasPrivilege('expense_head', 'can_add')) {
            access_denied();
        }
    
        $category_result      = $this->expensehead_model->get();
        $data['categorylist'] = $category_result;
        $this->form_validation->set_rules('expensehead', $this->lang->line('expense_head'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'exp_category' => $this->input->post('expensehead'),
                'description'  => $this->input->post('description'),
            );
            $this->expensehead_model->add($data);

            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Expense head created successfully.',
                'data' => $data,
            ]));
        }
    }

    public function edit($id = null)
    {
        if (!$this->rbac->hasPrivilege('expense', 'can_edit')) {
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

        $data['title']        = 'Edit Expense Head';
        $category_result      = $this->expensehead_model->get();
        $data['categorylist'] = $category_result;
        $data['id']           = $id;
        $category             = $this->expensehead_model->get($id);
        $data['expensehead']  = $category;
        $this->form_validation->set_rules('expensehead', $this->lang->line('expense_head'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $data = array(
                'id'           => $id,
                'exp_category' => $this->input->post('expensehead'),
                'description'  => $this->input->post('description'),
            );
            $this->expensehead_model->add($data);

            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Expense head updated successfully.',
                'data' => $data,
            ]));
        }
    }

}
