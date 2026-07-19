<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * DatabaseSwitcher (post_controller_constructor hook)
 *
 * SHARED-DB MODEL (Option B): there is ONE database. This hook no longer swaps
 * connections — it establishes the tenant CONTEXT (current school_id) for the
 * request so Tenant_lib::scope()/stamp() can isolate rows.
 *
 * Resolution order:
 *   1. An existing session school_id (set at login, or by the super-admin dropdown) wins.
 *   2. Otherwise, resolve by host/domain from the schools registry (multi-domain setups).
 *   3. Otherwise leave unset -> Tenant_lib defaults to school #1 (backward compatible).
 *
 * DEFENSIVE: any failure is swallowed; the app keeps working as single-school #1.
 * (Class/method names kept to match application/config/hooks.php registration.)
 */
class DatabaseSwitcher
{
    public function switchDatabase()
    {
        $CI =& get_instance();
        $CI->load->library('session');

        try {
            // Already have a bound tenant (login / dropdown)? Nothing to do.
            if ($CI->session->userdata('school_id') !== null) {
                return;
            }

            $CI->load->model('school_model');
            $host   = isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '';
            $school = $CI->school_model->getByHost($host);
            if ($school) {
                $CI->session->set_userdata('school_id', (int) $school->id);
                log_message('info', 'Tenant context = school #' . $school->id . ' (' . $school->code . ') via host ' . $host);
            }
        } catch (Exception $e) {
            log_message('error', 'DatabaseSwitcher(context) ignored: ' . $e->getMessage());
        }
    }
}
