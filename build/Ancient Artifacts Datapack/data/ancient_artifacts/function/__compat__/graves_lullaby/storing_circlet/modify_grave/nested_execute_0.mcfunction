execute unless entity @s[type=marker] run return fail
scoreboard players set #found_grave temp 1
data modify storage ancient_artifacts:temp player_storage.path set value "storing_circlet"
data modify storage ancient_artifacts:temp player_storage.result set value "ancient_artifacts:player storing_circlet"
function #theblackswitch:v2.0/player_storage/get with storage ancient_artifacts:temp player_storage
say Inventory data:
tellraw @a {nbt: "storing_circlet", storage: "ancient_artifacts:player"}
execute if score #inv_open temp matches 0 run data modify entity @s data.Inventory append from storage ancient_artifacts:player storing_circlet.extra_inv[]
execute if score #inv_open temp matches 1 run data modify entity @s data.Inventory append from storage ancient_artifacts:player storing_circlet.normal_inv[]
data modify storage ancient_artifacts:temp player_storage.path set value "storing_circlet"
function #theblackswitch:v2.0/player_storage/remove with storage ancient_artifacts:temp player_storage
