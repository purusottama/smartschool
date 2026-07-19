<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

/**
 * Tenant_lib — shared-DB multi-tenancy context (Option B: single DB, school_id column).
 *
 * Holds the "current school" for the request and provides the two primitives every
 * query must use so tenants stay isolated in a shared database:
 *
 *   $this->tenant_lib->scope();          // adds WHERE school_id = <current> to $this->db
 *   $data = $this->tenant_lib->stamp($data);  // adds school_id to an insert/update row
 *
 * Role behaviour:
 *   - Super Admin (role_id 7): may view ALL schools or pick one via the header dropdown.
 *     When "All" is selected, scope() applies NO filter (cross-school reports).
 *   - Every other role (school admin/staff/teacher/student/parent): pinned to their own
 *     school_id at login; they can never switch.
 *
 * Backward compatible: if no school context is resolved, scope() falls back to school #1.
 */
class Tenant_lib
{
    const SUPER_ADMIN_ROLE_ID = 7;
    const ALL = 'all';

    /** @var CI_Controller */
    protected $CI;

    public function __construct()
    {
        $this->CI = &get_instance();
        $this->CI->load->model('school_model');
    }

    // ---------------------------------------------------------------- role

    public function isSuperAdmin()
    {
        $admin = $this->CI->session->userdata('admin');
        if (empty($admin)) {
            return false;
        }
        // Session-only role read (no staff query) so this is safe to call at login,
        // before $this->staffrole is populated. getStaffRole() returns {id,name}.
        $role = json_decode($this->CI->customlib->getStaffRole());
        return isset($role->id) && (int) $role->id === self::SUPER_ADMIN_ROLE_ID;
    }

    /** Super admin can switch schools; everyone else is pinned. */
    public function canSwitch()
    {
        return $this->isSuperAdmin();
    }

    /** True when a super admin has chosen "All Schools" (no tenant filter). */
    public function isAllSchools()
    {
        return $this->isSuperAdmin() && $this->CI->session->userdata('school_id') === self::ALL;
    }

    // ------------------------------------------------------------- context

    /**
     * Bind the tenant context at login. $school_id comes from the user's own
     * record (staff.school_id / users.school_id). Super admins default to ALL.
     */
    public function bindAtLogin($school_id, $is_super_admin = false)
    {
        if ($is_super_admin) {
            // Land a super admin on a CONCRETE school (first active) so the dashboard
            // shows real data; they can switch to any school or "All" via the dropdown.
            $this->CI->session->set_userdata('school_id', $this->firstActiveSchoolId());
        } else {
            $this->CI->session->set_userdata('school_id', (int) $school_id ?: 1);
        }
    }

    /** First active school id (defaults to 1 for the backward-compatible install). */
    public function firstActiveSchoolId()
    {
        $rows = $this->CI->school_model->getAll();
        foreach ($rows as $r) {
            if (!empty($r['is_active'])) {
                return (int) $r['id'];
            }
        }
        return 1;
    }

    /** Super-admin school selection from the header dropdown ('all' or an id). */
    public function selectSchool($school_id)
    {
        if (!$this->canSwitch()) {
            return false;
        }
        if ($school_id === self::ALL) {
            $this->CI->session->set_userdata('school_id', self::ALL);
            return true;
        }
        $school = $this->CI->school_model->getById($school_id);
        if ($school) {
            $this->CI->session->set_userdata('school_id', (int) $school->id);
            return true;
        }
        return false;
    }

    /**
     * API tenant resolution. A super-admin caller may target any school via
     * school_id/school_code (POST/GET/X-School-* header). Non-super callers are
     * IGNORED here and must be pinned by their authenticated token (Phase-1 auth).
     */
    public function resolveFromRequest()
    {
        $school_id   = $this->CI->input->post('school_id', true) ?: $this->CI->input->get('school_id', true);
        $school_code = $this->CI->input->post('school_code', true) ?: $this->CI->input->get('school_code', true);
        if (empty($school_id)) {
            $hdr = $this->CI->input->get_request_header('X-School-Id');
            $school_id = $hdr ? trim($hdr) : $school_id;
        }
        if (empty($school_code)) {
            $hdr = $this->CI->input->get_request_header('X-School-Code');
            $school_code = $hdr ? trim($hdr) : $school_code;
        }

        $school = null;
        if (!empty($school_id) && $school_id !== self::ALL) {
            $school = $this->CI->school_model->getById($school_id);
        } elseif (!empty($school_code)) {
            $school = $this->CI->school_model->getByCode($school_code);
        }
        if ($school) {
            $this->CI->session->set_userdata('school_id', (int) $school->id);
        }
        return $school;
    }

    /** Current school id (int), or the ALL sentinel, or 1 as backward-compatible default. */
    public function currentSchoolId()
    {
        $sid = $this->CI->session->userdata('school_id');
        if ($sid === self::ALL) {
            return self::ALL;
        }
        return !empty($sid) ? (int) $sid : 1;
    }

    // ---------------------------------------------------- query primitives

    /**
     * Apply the tenant filter to the active query builder. Call immediately
     * before ->get()/->count_all_results(). No-op in "All Schools" mode.
     *
     * @param string|null $alias optional table alias/prefix, e.g. 'students'
     * @return CI_DB_query_builder for chaining
     */
    public function scope($alias = null)
    {
        if (!$this->isAllSchools()) {
            $col = ($alias ? $alias . '.' : '') . 'school_id';
            $this->CI->db->where($col, $this->currentSchoolId());
        }
        return $this->CI->db;
    }

    /** SQL fragment for raw queries: "AND students.school_id = 5" (empty in All mode). */
    public function whereSql($alias = null)
    {
        if ($this->isAllSchools()) {
            return '';
        }
        $col = ($alias ? $alias . '.' : '') . 'school_id';
        return ' AND ' . $col . ' = ' . (int) $this->currentSchoolId() . ' ';
    }

    /** Stamp a row with the current school_id before insert/update. */
    public function stamp(array $data)
    {
        if (!$this->isAllSchools()) {
            $data['school_id'] = (int) $this->currentSchoolId();
        }
        return $data;
    }
}
