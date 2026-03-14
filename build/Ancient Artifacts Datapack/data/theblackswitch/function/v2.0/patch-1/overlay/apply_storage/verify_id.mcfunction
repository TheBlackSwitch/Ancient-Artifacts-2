execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
$return run execute if data storage theblackswitch:overlay data[{"id":"$(id)"}]
