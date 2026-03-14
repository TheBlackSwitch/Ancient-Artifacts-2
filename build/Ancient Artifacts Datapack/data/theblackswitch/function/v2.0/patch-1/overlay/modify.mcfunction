execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
function theblackswitch:v2.0/patch-1/overlay/enable
execute unless data storage theblackswitch:overlay id run return run function theblackswitch:v2.0/patch-1/overlay/modify/nested_return_0
execute unless data storage theblackswitch:overlay texture run return run function theblackswitch:v2.0/patch-1/overlay/modify/nested_return_1
execute unless entity @s[type=minecraft:player] run return run function theblackswitch:v2.0/patch-1/overlay/modify/nested_return_2
execute store result storage theblackswitch:overlay player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage theblackswitch:overlay player_storage.path set value "theblackswitch.overlay"
data modify storage theblackswitch:overlay player_storage.result set value "theblackswitch:overlay data"
function theblackswitch:v2.0/patch-1/player_storage/get with storage theblackswitch:overlay player_storage
data remove storage theblackswitch:overlay player_storage
function theblackswitch:v2.0/patch-1/overlay/modify/nested_macro_0 with storage theblackswitch:overlay
execute store result storage theblackswitch:overlay player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage theblackswitch:overlay player_storage.path set value "theblackswitch.overlay"
data modify storage theblackswitch:overlay player_storage.source set value "storage theblackswitch:overlay data"
function theblackswitch:v2.0/patch-1/player_storage/set_from with storage theblackswitch:overlay player_storage
schedule function theblackswitch:v2.0/patch-1/overlay/clear_arguments 1 replace
function theblackswitch:v2.0/patch-1/overlay/show/update
