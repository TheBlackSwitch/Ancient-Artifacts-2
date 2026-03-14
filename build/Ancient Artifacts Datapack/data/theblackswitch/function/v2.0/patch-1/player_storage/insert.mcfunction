execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
$data modify $(result) set from storage theblackswitch:player_storage players[$(player_id)].$(path)
