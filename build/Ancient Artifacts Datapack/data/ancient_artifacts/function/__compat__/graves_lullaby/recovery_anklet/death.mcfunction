execute unless entity @s[tag=recovery] run return fail
execute if entity @s[tag=recover_inv] run return fail
tag @s add recover_inv
execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage ancient_artifacts:temp player_storage.path set value "recovery_inv"
data modify storage ancient_artifacts:temp player_storage.source set value "entity @s Inventory"
function #theblackswitch:v2.0/player_storage/set_from with storage ancient_artifacts:temp player_storage
data modify storage ancient_artifacts:temp player_storage.path set value "recovery_equip"
data modify storage ancient_artifacts:temp player_storage.source set value "entity @s equipment"
function #theblackswitch:v2.0/player_storage/set_from with storage ancient_artifacts:temp player_storage
execute if entity @s[tag=recovery_xp] run function ancient_artifacts:__compat__/graves_lullaby/recovery_anklet/death/nested_execute_0
execute if entity @s[tag=recovery_4] run function ancient_artifacts:__compat__/graves_lullaby/recovery_anklet/death/nested_execute_1
execute if entity @s[tag=recovery_3, tag=!recovery_4] run function ancient_artifacts:__compat__/graves_lullaby/recovery_anklet/death/nested_execute_2
execute if entity @s[tag=recovery_2] run function ancient_artifacts:__compat__/graves_lullaby/recovery_anklet/death/nested_execute_3
execute if entity @s[tag=recovery_1] run function ancient_artifacts:__compat__/graves_lullaby/recovery_anklet/death/nested_execute_4
