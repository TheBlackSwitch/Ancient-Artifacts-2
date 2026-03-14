execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute unless data storage theblackswitch:overlay data[1] run return run function theblackswitch:v2.0/patch-1/overlay/show/update/chest/nested_return_1
data modify storage theblackswitch:overlay version.id set from storage theblackswitch:overlay data[1].id
data modify storage theblackswitch:overlay version.number set from storage theblackswitch:overlay data[1].version
data remove storage theblackswitch:overlay check
data modify storage theblackswitch:overlay check set from entity @s Items[{Slot: 1b}].components."minecraft:custom_data"."tbs.overlay".version
execute store success score #should_modify temp run data modify storage theblackswitch:overlay check set from storage theblackswitch:overlay version
execute if score #should_modify temp matches 1 run function theblackswitch:v2.0/patch-1/overlay/show/update/chest/nested_execute_1
