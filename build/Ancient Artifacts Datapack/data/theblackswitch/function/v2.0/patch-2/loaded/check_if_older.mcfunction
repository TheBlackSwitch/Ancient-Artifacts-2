execute unless function theblackswitch:v2.0/patch-2/version_control/is_latest run return fail
$scoreboard players set #check-major temp $(major)
$scoreboard players set #check-minor temp $(minor)
$scoreboard players set #check-patch temp $(patch)
$scoreboard players set #check-suffix temp $(suffix)
$data modify storage theblackswitch:temp theblackswitch.loaded.array set from storage theblackswitch:loaded $(pack_id).history
return run function theblackswitch:v2.0/patch-2/loaded/check_if_older/loop
