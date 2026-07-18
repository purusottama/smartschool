<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function my_autoloader($class)
{

    if (substr($class, 0, 9) == "MY_Addon_") {
   
       if (file_exists($file = APPPATH . 'core/' . $class . '.php')) {
            include $file;
        }
    }
}
spl_autoload_register('my_autoloader');
//$route['api/(:any)'] = 'api/dbchange/index/$1';
$route['api/login'] = 'api/login/login';
$route['api/changepassword'] = 'api/login/changepassword';
$route['api/getStudentSessionClasses'] = 'api/common/getStudentSessionClasses';
$route['api/getStudentProfiles'] = 'api/common/getStudentProfiles';
$route['api/getStudentFee'] = 'api/common/getStudentFee';
$route['api/timetable'] = 'api/common/timetable';
$route['api/onlineexam'] = 'api/common/onlineexam';
$route['api/closedexam'] = 'api/common/closedexam';
$route['api/attendence'] = 'api/common/attendence';




//$route['api/getStudentFee'] = 'api/StudentFeeApi/getFees';



$route['default_controller'] = 'welcome/index';
$route['admin/dbchange/(:any)'] = 'admin/dbchange/index/$1';
$route['user/resetpassword/([a-z]+)/(:any)'] = 'site/resetpassword/$1/$2';
$route['admin/resetpassword/(:any)'] = 'site/admin_resetpassword/$1';
$route['admin/unauthorized'] = 'admin/admin/unauthorized';
$route['parent/unauthorized'] = 'parent/parents/unauthorized';
$route['student/unauthorized'] = 'user/user/unauthorized';
$route['teacher/unauthorized'] = 'teacher/teacher/unauthorized';
$route['accountant/unauthorized'] = 'accountant/accountant/unauthorized';
$route['librarian/unauthorized'] = 'librarian/librarian/unauthorized';

// $route['404_override'] = '';
$route['404_override'] = 'welcome/show_404';

$route['translate_uri_dashes'] = FALSE;
$route['cron/(:any)'] = 'cron/index/$1';

//======= front url rewriting==========
$route['page/(:any)'] = 'welcome/page/$1';
$route['read/(:any)'] = 'welcome/read/$1';
$route['online_admission'] = 'welcome/admission';
$route['examresult'] = 'welcome/examresult';
$route['frontend'] = 'welcome';
$route['cbseexam'] = 'welcome/cbseexam';
$route['online_course'] = 'course';
$route['annual_calendar'] = 'welcome/annual_calendar'; 
