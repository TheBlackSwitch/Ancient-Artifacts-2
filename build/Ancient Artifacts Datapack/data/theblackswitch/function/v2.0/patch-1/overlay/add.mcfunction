execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
function theblackswitch:v2.0/patch-1/overlay/enable
execute unless data storage theblackswitch:overlay texture run return run function theblackswitch:v2.0/patch-1/overlay/add/nested_return_0
execute unless data storage theblackswitch:overlay priority run return run function theblackswitch:v2.0/patch-1/overlay/add/nested_return_1
execute unless data storage theblackswitch:overlay id run return run function theblackswitch:v2.0/patch-1/overlay/add/nested_return_2
data modify storage theblackswitch:overlay curr_overlay.texture set from storage theblackswitch:overlay texture
data modify storage theblackswitch:overlay curr_overlay.priority set from storage theblackswitch:overlay priority
data modify storage theblackswitch:overlay curr_overlay.id set from storage theblackswitch:overlay id
data modify storage theblackswitch:overlay curr_overlay.version set value 0
execute unless entity @s[type=minecraft:player] run return run function theblackswitch:v2.0/patch-1/overlay/add/nested_return_3
scoreboard players set #priority temp -1
execute if data storage theblackswitch:overlay {priority: "persistent"} run scoreboard players set #priority temp 0
execute if data storage theblackswitch:overlay {priority: "conditional"} run scoreboard players set #priority temp 1
execute if data storage theblackswitch:overlay {priority: "notification"} run scoreboard players set #priority temp 2
execute if data storage theblackswitch:overlay {priority: "override"} run scoreboard players set #priority temp 3
execute if score #priority temp matches -1 run return run function theblackswitch:v2.0/patch-1/overlay/add/nested_return_4
execute store result storage theblackswitch:overlay curr_overlay.priority int 1 run scoreboard players get #priority temp
execute store result storage theblackswitch:overlay player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage theblackswitch:overlay player_storage.path set value "theblackswitch.overlay"
data modify storage theblackswitch:overlay player_storage.result set value "theblackswitch:overlay data"
function theblackswitch:v2.0/patch-1/player_storage/get with storage theblackswitch:overlay player_storage
data remove storage theblackswitch:overlay player_storage
execute store success score #success temp run function theblackswitch:v2.0/patch-1/overlay/apply_storage/verify_id with storage theblackswitch:overlay
execute if score #success temp matches 1.. run return run function theblackswitch:v2.0/patch-1/overlay/add/nested_return_5
data modify storage theblackswitch:overlay post_insert set from storage theblackswitch:overlay data
data remove storage theblackswitch:overlay pre_insert
function theblackswitch:v2.0/patch-1/overlay/apply_storage/split
data remove storage theblackswitch:overlay data
data modify storage theblackswitch:overlay data set from storage theblackswitch:overlay pre_insert
data modify storage theblackswitch:overlay data append from storage theblackswitch:overlay curr_overlay
function theblackswitch:v2.0/patch-1/overlay/apply_storage/concat_post_insert
execute store result storage theblackswitch:overlay player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage theblackswitch:overlay player_storage.path set value "theblackswitch.overlay"
data modify storage theblackswitch:overlay player_storage.source set value "storage theblackswitch:overlay data"
function theblackswitch:v2.0/patch-1/player_storage/set_from with storage theblackswitch:overlay player_storage
schedule function theblackswitch:v2.0/patch-1/overlay/clear_arguments 1 replace
function theblackswitch:v2.0/patch-1/overlay/show/update
