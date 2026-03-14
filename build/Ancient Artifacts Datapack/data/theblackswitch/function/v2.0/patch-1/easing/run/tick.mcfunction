execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute unless score #tbs-v2.0.enabled.easing tbs.server_data matches 1 run return fail
execute if score #tbs.easing_entity_count tbs.server_data matches 1.. as @e[tag=tbs.easing] at @s run function theblackswitch:v2.0/patch-1/easing/run/ease
