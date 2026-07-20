<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Dispatch extends My_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->library('media_storage');
        $this->load->model("dispatch_model");
    }

    public function index()
    {
        // if (!$this->rbac->hasPrivilege('postal_dispatch', 'can_view')) {
        //     access_denied();
        // }
        $data = array();

        // No 'to_title' posted -> plain list request.
        if ($this->input->post('to_title') === null) {
            $data['DispatchList'] = $this->dispatch_model->dispatch_list();

            return $this->output->set_output(json_encode([
                'status'          => true,
                'success_message' => 'Dispatch list',
                'data'            => $data,
            ]));
        }

        // 'to_title' posted -> create the dispatch record, the same write the
        // admin/web screen performs, against the same model and table.
        $this->form_validation->set_rules('to_title', $this->lang->line('to_title'), 'required');
        $this->form_validation->set_rules('file', $this->lang->line('file'), 'callback_handle_upload[file]');

        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status'        => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        }

        $img_name = $this->media_storage->fileupload("file", "./uploads/front_office/dispatch_receive/");

        $dispatch = array(
            'reference_no' => $this->input->post('ref_no'),
            'to_title'     => $this->input->post('to_title'),
            'address'      => $this->input->post('address'),
            'note'         => $this->input->post('note'),
            'from_title'   => $this->input->post('from'),
            'date'         => $this->customlib->dateFormatToYYYYMMDD($this->input->post('date')),
            'type'         => 'dispatch',
            'image'        => $img_name,
        );

        $dispatch_id = $this->dispatch_model->insert('dispatch_receive', $dispatch);

        $data['DispatchList'] = $this->dispatch_model->dispatch_list();

        return $this->output->set_output(json_encode([
            'status'          => true,
            'success_message' => 'Dispatch has been added successfully.',
            'data'            => $data,
        ]));
    }

    public function editdispatch($id = null)
    {
        if (!$this->rbac->hasPrivilege('postal_dispatch', 'can_edit')) {
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

        $this->form_validation->set_rules('to_title', $this->lang->line('to_title'), 'required');
        $this->form_validation->set_rules('file', $this->lang->line('file'), 'callback_handle_upload[file]');
        $data['Dispatch_data'] = $this->dispatch_model->dis_rec_data($id, 'dispatch');

        if ($this->form_validation->run() == false) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => strip_tags(validation_errors()),
            ]));
        } else {
            $id;
            $dispatch = array(
                'reference_no' => $this->input->post('ref_no'),
                'to_title'     => $this->input->post('to_title'),
                'address'      => $this->input->post('address'),
                'note'         => $this->input->post('note'),
                'from_title'   => $this->input->post('from'),
                'date'         => $this->customlib->dateFormatToYYYYMMDD($this->input->post('date')),
                'type'         => 'dispatch',
            );

            if (isset($_FILES["file"]) && $_FILES['file']['name'] != '' && (!empty($_FILES['file']['name']))) {

                $img_name = $this->media_storage->fileupload("file", "./uploads/front_office/dispatch_receive/");
            } else {
                $img_name = $data['Dispatch_data']['image'];
            }

            $dispatch['image'] = $img_name;

            if (isset($_FILES["file"]) && $_FILES['file']['name'] != '' && (!empty($_FILES['file']['name']))) {

                $this->media_storage->filedelete($data['Dispatch_data']['image'], "uploads/front_office/dispatch_receive/");
            }

            $this->dispatch_model->update_dispatch('dispatch_receive', $id, 'dispatch', $dispatch);

            return $this->output->set_output(json_encode([
                'status' => true,
                'success_message' => 'Dispatch record updated successfully.',
                'data' => $dispatch,
            ]));
        }
    }

    public function download($id)
    {
        $dispatch_list = $this->dispatch_model->dis_rec_data($id, 'dispatch');     
        $this->media_storage->filedownload($dispatch_list['image'], "./uploads/front_office/dispatch_receive");
    }

    public function delete($id = null)
    {
        if (!$this->rbac->hasPrivilege('postal_dispatch', 'can_delete')) {
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

        $row = $this->dispatch_model->dis_rec_data($id, 'dispatch');

        if (empty($row)) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => 'Dispatch record not found.',
            ]));
        }

        if ($row['image'] != '') {
            $this->media_storage->filedelete($row['image'], "uploads/front_office/dispatch_receive/");
        }

        $this->dispatch_model->delete($id);

        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Dispatch record deleted successfully.',
            'data' => array('id' => $id),
        ]));
    }

    public function details($id = null, $type = null)
    {
        if (!$this->rbac->hasPrivilege('postal_dispatch', 'can_view')) {
            access_denied();
        }

        if (empty($id)) {
            $id = $this->input->post('id', true);
        }

        if (empty($type)) {
            $type = $this->input->post('type', true);
        }

        if (empty($id)) {
            return $this->output->set_output(json_encode([
                'status' => false,
                'error_message' => 'Record id is required.',
            ]));
        }

        if (empty($type)) {
            $type = 'dispatch';
        }

        $data['data'] = $this->dispatch_model->dis_rec_data($id, $type);

        return $this->output->set_output(json_encode([
            'status' => true,
            'success_message' => 'Dispatch details fetched successfully.',
            'data' => $data,
        ]));
    }

    public function handle_upload($str, $var)
    {
        $image_validate = $this->config->item('file_validate');
        $result         = $this->filetype_model->get();
        if (isset($_FILES[$var]) && !empty($_FILES[$var]['name'])) {

            $file_type = $_FILES[$var]['type'];
            $file_size = $_FILES[$var]["size"];
            $file_name = $_FILES[$var]["name"];

            $allowed_extension = array_map('trim', array_map('strtolower', explode(',', $result->file_extension)));
            $allowed_mime_type = array_map('trim', array_map('strtolower', explode(',', $result->file_mime)));
            $ext               = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

            if ($files = filesize($_FILES[$var]['tmp_name'])) {

                if (!in_array($file_type, $allowed_mime_type)) {
                    $this->form_validation->set_message('handle_upload', $this->lang->line('file_type_not_allowed'));
                    return false;
                }

                if (!in_array($ext, $allowed_extension) || !in_array($file_type, $allowed_mime_type)) {
                    $this->form_validation->set_message('handle_upload', $this->lang->line('extension_not_allowed'));
                    return false;
                }
                if ($file_size > $result->file_size) {
                    $this->form_validation->set_message('handle_upload', $this->lang->line('file_size_shoud_be_less_than') . number_format($result->file_size / 1048576, 2) . " MB");
                    return false;
                }

            } else {
                $this->form_validation->set_message('handle_upload', $this->lang->line('file_type_extension_error_uploading_image'));
                return false;
            }

            return true;
        }
        return true;

    }

}
