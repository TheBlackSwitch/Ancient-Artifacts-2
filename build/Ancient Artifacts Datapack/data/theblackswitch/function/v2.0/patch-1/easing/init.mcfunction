execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute unless data storage theblackswitch:easing duration run return run function theblackswitch:v2.0/patch-1/easing/init/nested_return_0
execute unless data storage theblackswitch:easing ease run return run function theblackswitch:v2.0/patch-1/easing/init/nested_return_1
execute unless data storage theblackswitch:easing x run return run function theblackswitch:v2.0/patch-1/easing/init/nested_return_2
execute unless data storage theblackswitch:easing y run return run function theblackswitch:v2.0/patch-1/easing/init/nested_return_3
execute unless data storage theblackswitch:easing z run return run function theblackswitch:v2.0/patch-1/easing/init/nested_return_4
execute unless data storage theblackswitch:easing yaw run return run function theblackswitch:v2.0/patch-1/easing/init/nested_return_5
execute unless data storage theblackswitch:easing pitch run return run function theblackswitch:v2.0/patch-1/easing/init/nested_return_6
function theblackswitch:v2.0/patch-1/easing/enable
execute store result score @s tbs.easing.duration run data get storage theblackswitch:easing duration 1
execute store result score @s tbs.easing.current_tick run data get storage theblackswitch:easing duration 1
execute store result score @s tbs.easing.x run data get storage theblackswitch:easing x 1000
execute store result score @s tbs.easing.y run data get storage theblackswitch:easing y 1000
execute store result score @s tbs.easing.z run data get storage theblackswitch:easing z 1000
execute store result score @s tbs.easing.yaw run data get storage theblackswitch:easing yaw 1000
execute store result score @s tbs.easing.pitch run data get storage theblackswitch:easing pitch 1000
scoreboard players set @s tbs.easing.ease 4
execute if data storage theblackswitch:easing {ease: "ease_in"} run scoreboard players set @s tbs.easing.ease 1
execute if data storage theblackswitch:easing {ease: "ease_out"} run scoreboard players set @s tbs.easing.ease 2
execute if data storage theblackswitch:easing {ease: "ease_in_out"} run scoreboard players set @s tbs.easing.ease 3
execute if data storage theblackswitch:easing callback run function theblackswitch:v2.0/patch-1/easing/init/nested_execute_0
tag @s add tbs.easing
scoreboard players add #tbs.easing_entity_count tbs.server_data 1
execute at @s run function theblackswitch:v2.0/patch-1/easing/run/ease
schedule function theblackswitch:v2.0/patch-1/easing/run/clear_arguments 1 replace
