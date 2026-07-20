<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Category extends MY_Controller
{

    public function __construct()
    {
        // English (en) language and the JSON content type are applied centrally
        // for every customapi/* request in MY_Controller.
        parent::__construct();
    }

    /**
     * List every student category. Same data source (`categories` table) the
     * admin/web panel reads, so both stay in sync.
     */
    public function index()
    {
        $data['categorylist'] = $this->category_model->get();

        return $this->output->set_output(json_encode([
            'status'          => true,
            'success_message' => 'Category list',
            'data'            => $data,
        ]));
    }

    /**
     * Fetch a single category by id (id comes from the POST body or URL segment).
     */
    public function view($id = null)
    {
        $id = $this->resolveId($id);
        if (empty($id)) {
            return $this->fail('Category id is required.');
        }

        $category = $this->category_model->get($id);
        if (empty($category)) {
            return $this->fail('Category not found.');
        }

        return $this->output->set_output(json_encode([
            'status'          => true,
            'success_message' => 'Category detail',
            'data'            => ['category' => $category],
        ]));
    }

    /**
     * Create a category. Writes to the shared `categories` table, so the new
     * record is immediately visible in the admin/web panel.
     */
    public function create()
    {
        $this->form_validation->set_rules('category', $this->lang->line('category'), 'trim|required|xss_clean');

        if ($this->form_validation->run() == false) {
            return $this->fail(strip_tags(validation_errors()));
        }

        $insert = ['category' => $this->input->post('category', true)];
        $id     = $this->category_model->add($insert);

        return $this->output->set_output(json_encode([
            'status'          => true,
            'success_message' => 'Category has been added successfully.',
            'data'            => [
                'category'     => $this->category_model->get($id),
                'categorylist' => $this->category_model->get(),
            ],
        ]));
    }

    /**
     * Update an existing category (id + category from the POST body).
     */
    public function edit($id = null)
    {
        $id = $this->resolveId($id);
        if (empty($id)) {
            return $this->fail('Category id is required.');
        }

        if (empty($this->category_model->get($id))) {
            return $this->fail('Category not found.');
        }

        $this->form_validation->set_rules('category', $this->lang->line('category'), 'trim|required|xss_clean');

        if ($this->form_validation->run() == false) {
            return $this->fail(strip_tags(validation_errors()));
        }

        $update = [
            'id'       => $id,
            'category' => $this->input->post('category', true),
        ];
        $this->category_model->add($update);

        return $this->output->set_output(json_encode([
            'status'          => true,
            'success_message' => 'Category has been updated successfully.',
            'data'            => [
                'category'     => $this->category_model->get($id),
                'categorylist' => $this->category_model->get(),
            ],
        ]));
    }

    /**
     * Delete a category (id from the POST body or URL segment).
     */
    public function delete($id = null)
    {
        $id = $this->resolveId($id);
        if (empty($id)) {
            return $this->fail('Category id is required.');
        }

        if (empty($this->category_model->get($id))) {
            return $this->fail('Category not found.');
        }

        $this->category_model->remove($id);

        return $this->output->set_output(json_encode([
            'status'          => true,
            'success_message' => 'Category has been deleted successfully.',
            'data'            => ['categorylist' => $this->category_model->get()],
        ]));
    }

    /**
     * Resolve a record id from either the URL segment or the POST body,
     * so requests work whether the id is sent in the path or as form data.
     */
    private function resolveId($id = null)
    {
        if (!empty($id)) {
            return $id;
        }
        return $this->input->post('id', true);
    }

    /**
     * Standard JSON failure response.
     */
    private function fail($message)
    {
        return $this->output->set_output(json_encode([
            'status'        => false,
            'error_message' => $message,
        ]));
    }

}
