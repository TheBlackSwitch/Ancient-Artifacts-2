execute store result score .1 temp run data get entity @s SelectedItem.components."minecraft:custom_data".data.start
execute store result storage ancient_artifacts:artifact start int 1 run scoreboard players get .1 temp
execute store result score .2 temp run data get entity @s SelectedItem.components."minecraft:custom_data".data.max
scoreboard players operation .2 temp += .1 temp
scoreboard players remove .2 temp 1
execute store result storage ancient_artifacts:artifact max int 1 run scoreboard players get .2 temp
execute store result score .level temp run data get entity @s SelectedItem.components."minecraft:custom_data".data.level
function ancient_artifacts:artifact_hotbar/check_same_type with storage ancient_artifacts:artifact
execute unless score @s artifact_slot_1 matches 0 unless score @s artifact_slot_2 matches 0 store result score @s artifact_slot_3 run scoreboard players get @s artifact_slot_2
execute unless score @s artifact_slot_1 matches 0 store result score @s artifact_slot_2 run scoreboard players get @s artifact_slot_1
execute store result score @s artifact_slot_1 run data get entity @s SelectedItem.components."minecraft:custom_data".data.level
scoreboard players operation @s artifact_slot_1 += .1 temp
scoreboard players remove @s artifact_slot_1 1
