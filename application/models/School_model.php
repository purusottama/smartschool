<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

/**
 * School_model — registry of tenant schools (Multi-School / DB-per-school).
 *
 * IMPORTANT: this model always talks to the MASTER/registry connection
 * (the `default` DB group), never the tenant-switched $this->db. Otherwise,
 * after DatabaseSwitcher/Tenant_lib switches to a tenant DB, the `schools`
 * table would not be found. Keeping a dedicated registry handle makes lookups
 * safe from any request context (web, hook, API).
 */
class School_model extends CI_Model
{
    /** @var CI_DB_query_builder registry (master) connection */
    protected $registry;

    public function __construct()
    {
        parent::__construct();
        // Separate, always-master connection. TRUE => return the connection object.
        $this->registry = $this->load->database('default', TRUE);
    }

    public function getAll()
    {
        return $this->registry->order_by('id', 'ASC')->get('schools')->result_array();
    }

    public function get($id)
    {
        return $this->registry->where('id', $id)->get('schools')->row();
    }

    public function getByCode($code)
    {
        return $this->registry->where('code', $code)->where('is_active', 1)->get('schools')->row();
    }

    public function getById($id)
    {
        return $this->registry->where('id', $id)->where('is_active', 1)->get('schools')->row();
    }

    public function getByHost($host)
    {
        if (empty($host)) {
            return null;
        }
        return $this->registry->where('domain', $host)->where('is_active', 1)->get('schools')->row();
    }

    public function existsCode($code, $exclude_id = null)
    {
        $this->registry->where('code', $code);
        if ($exclude_id !== null) {
            $this->registry->where('id !=', $exclude_id);
        }
        return $this->registry->count_all_results('schools') > 0;
    }

    public function add($data)
    {
        if (isset($data['id']) && !empty($data['id'])) {
            $id = $data['id'];
            unset($data['id']);
            $data['updated_at'] = date('Y-m-d H:i:s');
            $this->registry->where('id', $id)->update('schools', $data);
            return $id;
        }
        $this->registry->insert('schools', $data);
        return $this->registry->insert_id();
    }

    public function remove($id)
    {
        // Never allow deleting the backward-compatibility anchor (school #1).
        if ((int) $id === 1) {
            return false;
        }
        return $this->registry->where('id', $id)->delete('schools');
    }

    public function toggle($id)
    {
        $school = $this->get($id);
        if (!$school) {
            return false;
        }
        $new = ($school->is_active == 1) ? 0 : 1;
        return $this->registry->where('id', $id)->update('schools', array('is_active' => $new, 'updated_at' => date('Y-m-d H:i:s')));
    }
}
