execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
data modify storage theblackswitch:player_storage players append value {}
scoreboard players remove #loop temp 1
execute if score #loop temp matches 1.. run function theblackswitch:v2.0/patch-1/player_id/create_empty_player_root
