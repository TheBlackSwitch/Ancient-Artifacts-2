execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute unless data storage theblackswitch:overlay post_insert[] run return 1
execute store result score #item_priority temp run data get storage theblackswitch:overlay post_insert[0].priority
execute if score #priority temp >= #item_priority temp run return 1
data modify storage theblackswitch:overlay pre_insert append from storage theblackswitch:overlay post_insert[0]
data remove storage theblackswitch:overlay post_insert[0]
function theblackswitch:v2.0/patch-1/overlay/apply_storage/split
