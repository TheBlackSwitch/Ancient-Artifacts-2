scoreboard players operation @s tbs.ID = #search tbs.ID

data remove storage ancient_artifacts:player recovery_equip
data remove storage ancient_artifacts:player recovery_inv

# Grab the player ID
execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run data get storage ancient_artifacts:player search_id

# Reset the invnetory data from the previous recover
data modify storage ancient_artifacts:temp player_storage merge value {path:"recovery_inv"}
function #theblackswitch:__version__/player_storage/remove with storage ancient_artifacts:temp player_storage

# Reset the equipment data from the previous recover
data modify storage ancient_artifacts:temp player_storage merge value {path:"recovery_equip"}
function #theblackswitch:__version__/player_storage/remove with storage ancient_artifacts:temp player_storage


data modify storage ancient_artifacts:player search_id set from entity @s Item.components."minecraft:attribute_modifiers"[{id:"minecraft:player_id"}].amount
execute unless predicate ancient_artifacts:is_search_id_storage run return fail

data modify storage ancient_artifacts:player recovery_inv set from entity @s Item.components."minecraft:custom_data".Inv
data modify storage ancient_artifacts:player recovery_equip set from entity @s Item.components."minecraft:custom_data".equip

execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run data get storage ancient_artifacts:player search_id
data modify storage ancient_artifacts:temp player_storage merge value {path:"recovery_inv",source:"storage ancient_artifacts:player recovery_inv"}
function #theblackswitch:__version__/player_storage/set_from with storage ancient_artifacts:temp player_storage

data modify storage ancient_artifacts:temp player_storage merge value {path:"recovery_equip",source:"storage ancient_artifacts:player recovery_equip"}
function #theblackswitch:__version__/player_storage/set_from with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage

scoreboard players set #success temp 1

kill @s
