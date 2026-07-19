<?php
/**
 * Idempotently add school_id (+ index) to every tenant table in `sms`.
 * Skips tables that already have the column/index and the global exclusions.
 */
$DB = 'sms';
$m = @new mysqli('localhost', 'root', '', $DB);
if ($m->connect_errno) { fwrite(STDERR, "connect failed: " . $m->connect_error . "\n"); exit(2); }

$global = array_map('strtolower', array(
    'schools','languages','currency','countries','states','cities','timezone',
    'migrations','ci_sessions','sessions','permission','permission_category',
    'permission_group','roles_permissions','staff_privileges','sidebar_menu',
    'sidebar_sub_menu','modules','addon_details','themes','sms_gateway',
    'sch_settings','email_config','payment_gateway','lang_phrases',
));

$tables = array();
$res = $m->query("SELECT table_name FROM information_schema.tables WHERE table_schema='$DB' AND table_type='BASE TABLE'");
while ($r = $res->fetch_row()) $tables[] = $r[0];
sort($tables);

$added = 0; $skipped_global = 0; $already = 0; $idx_added = 0; $errors = 0;
foreach ($tables as $t) {
    if (in_array(strtolower($t), $global)) { $skipped_global++; continue; }

    $c = $m->query("SELECT COUNT(*) c FROM information_schema.columns WHERE table_schema='$DB' AND table_name='$t' AND column_name='school_id'")->fetch_assoc();
    if ($c['c'] == 0) {
        if ($m->query("ALTER TABLE `$t` ADD COLUMN `school_id` INT NOT NULL DEFAULT 1")) $added++;
        else { $errors++; fwrite(STDERR, "col $t: " . $m->error . "\n"); }
    } else { $already++; }

    $i = $m->query("SELECT COUNT(*) c FROM information_schema.statistics WHERE table_schema='$DB' AND table_name='$t' AND index_name='idx_{$t}_school'")->fetch_assoc();
    if ($i['c'] == 0) {
        if ($m->query("ALTER TABLE `$t` ADD INDEX `idx_{$t}_school` (`school_id`)")) $idx_added++;
        else { $errors++; }
    }
}

echo "Tables total: " . count($tables) . "\n";
echo "school_id columns added: $added\n";
echo "already had column: $already\n";
echo "indexes added: $idx_added\n";
echo "kept global (skipped): $skipped_global\n";
echo "errors: $errors\n";

// verification samples
foreach (array('students','staff','users','student_fees','classes') as $t) {
    $c = $m->query("SELECT COUNT(*) c FROM information_schema.columns WHERE table_schema='$DB' AND table_name='$t' AND column_name='school_id'")->fetch_assoc();
    echo "  verify $t.school_id: " . ($c['c'] ? 'YES' : 'no') . "\n";
}
$m->close();
