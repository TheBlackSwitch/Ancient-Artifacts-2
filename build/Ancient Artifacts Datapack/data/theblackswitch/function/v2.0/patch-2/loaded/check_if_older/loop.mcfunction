execute unless function theblackswitch:v2.0/patch-2/version_control/is_latest run return fail
execute unless data storage theblackswitch:temp theblackswitch.loaded.array[] run return fail
data modify storage theblackswitch:temp theblackswitch.loaded.curr_item set from storage theblackswitch:temp theblackswitch.loaded.array[0]
data remove storage theblackswitch:temp theblackswitch.loaded.array[0]
execute store result score #major temp run data get storage theblackswitch:temp theblackswitch.loaded.curr_item.major
execute store result score #minor temp run data get storage theblackswitch:temp theblackswitch.loaded.curr_item.minor
execute store result score #patch temp run data get storage theblackswitch:temp theblackswitch.loaded.curr_item.patch
execute store result score #suffix temp run data get storage theblackswitch:temp theblackswitch.loaded.curr_item.suffix
execute if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["", {text: "[Debug]: ", color: "yellow", bold: true}, [{text: "Checking version history: ", color: "yellow"}, {storage: "theblackswitch:temp", nbt: "theblackswitch.loaded.curr_item", color: "white"}]]
execute if function theblackswitch:v2.0/patch-2/loaded/check_if_older/is_older run return 1
return run function theblackswitch:v2.0/patch-2/loaded/check_if_older/loop
