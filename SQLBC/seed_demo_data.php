<?php
/**
 * Multi-School demo seeder (shared-DB, school_id).
 * - Extends schools with profile fields; upserts School #1 and #2.
 * - Seeds School Admin / Teacher / Accountant (staff, bcrypt pw) + Student + Parent
 *   (users, plaintext pw) for BOTH schools, all tagged with school_id.
 * Idempotent: removes prior demo rows (by markers) before re-inserting.
 */
$DB = 'sms';
$m = new mysqli('127.0.0.1', 'root', '', $DB);
$m->set_charset('utf8');

/* ---------- helpers ---------- */
function cols_required($m, $DB, $t) {
    $out = array();
    $r = $m->query("SELECT column_name,data_type FROM information_schema.columns
                    WHERE table_schema='$DB' AND table_name='$t'
                      AND is_nullable='NO' AND column_default IS NULL AND extra NOT LIKE '%auto_increment%'");
    while ($x = $r->fetch_assoc()) $out[$x['column_name']] = $x['data_type'];
    return $out;
}
function ins($m, $DB, $t, $data) {
    // auto-fill required columns not provided
    foreach (cols_required($m, $DB, $t) as $c => $type) {
        if (array_key_exists($c, $data)) continue;
        if (in_array($type, array('int','bigint','tinyint','smallint','decimal','double','float'))) $data[$c] = 0;
        elseif ($type === 'date') $data[$c] = '2005-01-01';
        elseif (in_array($type, array('datetime','timestamp'))) $data[$c] = date('Y-m-d H:i:s');
        else $data[$c] = '';
    }
    $keys = array_map(function($k){ return "`$k`"; }, array_keys($data));
    $vals = array();
    foreach ($data as $v) $vals[] = ($v === null) ? 'NULL' : "'" . $m->real_escape_string($v) . "'";
    $sql = "INSERT INTO `$t` (" . implode(',', $keys) . ") VALUES (" . implode(',', $vals) . ")";
    if (!$m->query($sql)) { throw new Exception("insert $t failed: " . $m->error); }
    return $m->insert_id;
}
function add_col($m, $DB, $t, $c, $ddl) {
    $e = $m->query("SELECT COUNT(*) n FROM information_schema.columns WHERE table_schema='$DB' AND table_name='$t' AND column_name='$c'")->fetch_assoc()['n'];
    if (!$e) $m->query("ALTER TABLE `$t` ADD COLUMN $ddl");
}

/* ---------- 1. schools profile columns ---------- */
add_col($m, $DB, 'schools', 'address',       "`address` VARCHAR(255) NULL");
add_col($m, $DB, 'schools', 'phone',         "`phone` VARCHAR(32) NULL");
add_col($m, $DB, 'schools', 'email',         "`email` VARCHAR(191) NULL");
add_col($m, $DB, 'schools', 'academic_year', "`academic_year` VARCHAR(32) NULL");
add_col($m, $DB, 'schools', 'principal_name',"`principal_name` VARCHAR(191) NULL");

/* ---------- 2. upsert schools ---------- */
function upsert_school($m, $DB, $id, $d) {
    $ex = $m->query("SELECT id FROM schools WHERE id=$id")->num_rows;
    if ($ex) {
        $set = array();
        foreach ($d as $k=>$v) $set[] = "`$k`='" . $m->real_escape_string($v) . "'";
        $m->query("UPDATE schools SET " . implode(',', $set) . " WHERE id=$id");
    } else {
        $d['id'] = $id; ins($m, $DB, 'schools', $d);
    }
}
upsert_school($m, $DB, 1, array(
    'name'=>'Greenwood High School','code'=>'greenwood','is_active'=>1,
    'address'=>'12 Oak Street, Springfield','phone'=>'+1-555-0101','email'=>'office@greenwood.test',
    'academic_year'=>'2025-26','principal_name'=>'Margaret Hale',
));
upsert_school($m, $DB, 2, array(
    'name'=>'Sunrise Public School','code'=>'sunrise','is_active'=>1,
    'address'=>'88 Maple Avenue, Rivertown','phone'=>'+1-555-0202','email'=>'office@sunrise.test',
    'academic_year'=>'2025-26','principal_name'=>'David Okonkwo',
));

/* ---------- 3. clean prior demo rows ---------- */
$m->query("DELETE sr FROM staff_roles sr JOIN staff s ON s.id=sr.staff_id WHERE s.email LIKE '%@greenwood.test' OR s.email LIKE '%@sunrise.test'");
$m->query("DELETE FROM staff WHERE email LIKE '%@greenwood.test' OR email LIKE '%@sunrise.test'");
$m->query("DELETE FROM student_session WHERE student_id IN (SELECT id FROM students WHERE admission_no LIKE 'DEMO-%')");
$m->query("DELETE FROM users WHERE username IN ('std.greenwood','par.greenwood','std.sunrise','par.sunrise')");
$m->query("DELETE FROM students WHERE admission_no LIKE 'DEMO-%'");

/* ---------- 4. lookups ---------- */
$lang_id = $m->query("SELECT id FROM languages ORDER BY id LIMIT 1")->fetch_assoc()['id'];
$session_id = $m->query("SELECT session_id FROM sch_settings LIMIT 1")->fetch_assoc()['session_id'];
$STAFF_PW = password_hash('School@123', PASSWORD_DEFAULT);
$creds = array();

/* ---------- 5. per-school seed ---------- */
$schools = array(
    1 => array('slug'=>'greenwood','label'=>'Greenwood'),
    2 => array('slug'=>'sunrise','label'=>'Sunrise'),
);
foreach ($schools as $sid => $sc) {
    $slug = $sc['slug'];

    // -- staff: Admin(1), Teacher(2), Accountant(3)
    $staffdefs = array(
        array('role'=>1,'rname'=>'School Admin','name'=>'Alan','sur'=>'Admin'),
        array('role'=>2,'rname'=>'Teacher','name'=>'Tina','sur'=>'Teacher'),
        array('role'=>3,'rname'=>'Accountant','name'=>'Amy','sur'=>'Accounts'),
    );
    foreach ($staffdefs as $sd) {
        $email = strtolower($sd['rname']==='School Admin' ? "admin" : $sd['name']) . ".$slug@" . $slug . ".test";
        $email = str_replace(' ', '', $email);
        $staff_id = ins($m,$DB,'staff', array(
            'employee_id'=>strtoupper($slug).'-'.$sd['role'],
            'name'=>$sd['name'],'surname'=>$sd['sur'],'email'=>$email,
            'contact_no'=>'+1-555-1'.$sid.$sd['role'].'0','password'=>$STAFF_PW,
            'gender'=>'Male','is_active'=>1,'lang_id'=>$lang_id,'dob'=>'1990-01-01',
            'school_id'=>$sid,
        ));
        // link role
        ins($m,$DB,'staff_roles', array('role_id'=>$sd['role'],'staff_id'=>$staff_id,'is_active'=>1,'school_id'=>$sid));
        // staff also get a users row? Not required for staff login (staff_model uses staff table). Skip.
        $creds[] = array($sc['label'], $sd['rname'], $email, 'School@123', 'staff (email login)');
    }

    // -- student: students + student_session + users(role=student)
    $adm = 'DEMO-'.strtoupper($slug).'-001';
    $student_id = ins($m,$DB,'students', array(
        'admission_no'=>$adm,'roll_no'=>'1','admission_date'=>'2025-04-01',
        'firstname'=>'Sam','lastname'=>ucfirst($slug),'gender'=>'Male','dob'=>'2012-06-15',
        'mobileno'=>'+1-555-2'.$sid.'01','email'=>"sam.$slug@$slug.test",
        'guardian_name'=>'Pat '.ucfirst($slug),'guardian_relation'=>'Father',
        'guardian_phone'=>'+1-555-3'.$sid.'01','guardian_email'=>"pat.$slug@$slug.test",
        'is_active'=>'yes','school_id'=>$sid,
    ));
    ins($m,$DB,'student_session', array(
        'session_id'=>$session_id,'student_id'=>$student_id,'class_id'=>1,'section_id'=>1,
        'is_active'=>'yes','default_login'=>1,'school_id'=>$sid,
    ));
    // parent user first (so we can link student.parent_id)
    $parent_uid = ins($m,$DB,'users', array(
        'user_id'=>0,'username'=>"par.$slug",'password'=>'Parent@123','role'=>'parent',
        'is_active'=>'yes','childs'=>(string)$student_id,'lang_id'=>$lang_id,'verification_code'=>'',
        'school_id'=>$sid,
    ));
    $m->query("UPDATE students SET parent_id=$parent_uid WHERE id=$student_id");
    // student user
    ins($m,$DB,'users', array(
        'user_id'=>$student_id,'username'=>"std.$slug",'password'=>'Student@123','role'=>'student',
        'is_active'=>'yes','childs'=>'','lang_id'=>$lang_id,'verification_code'=>'',
        'school_id'=>$sid,
    ));
    $creds[] = array($sc['label'], 'Student', "std.$slug", 'Student@123', 'users (username login)');
    $creds[] = array($sc['label'], 'Parent',  "par.$slug", 'Parent@123',  'users (username login)');
}

/* ---------- 6. report ---------- */
echo "SEED COMPLETE.\n\nschools:\n";
$r=$m->query("SELECT id,name,code,academic_year FROM schools ORDER BY id");
while($x=$r->fetch_assoc()) echo "  #{$x['id']} {$x['name']} (code={$x['code']}, AY={$x['academic_year']})\n";
echo "\nDEMO CREDENTIALS (password | login field):\n";
printf("  %-10s %-14s %-28s %-12s %s\n",'School','Role','Login','Password','Auth path');
foreach($creds as $c) printf("  %-10s %-14s %-28s %-12s %s\n",$c[0],$c[1],$c[2],$c[3],$c[4]);
$m->close();
