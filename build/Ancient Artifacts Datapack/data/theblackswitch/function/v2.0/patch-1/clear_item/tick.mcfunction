execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute unless score #tbs-v2.0.enabled.clear_item tbs.server_data matches 1 run return fail
execute at @a as @e[type=item, distance=..20, tag=!tbs.clear_checke] if items entity @s container.0 *[custom_data~{tbs.clear_when_dropped: true}] run kill @s
execute at @a as @e[type=item, distance=..20, tag=!tbs.clear_checke] run tag @s add tbs.clear_checked
