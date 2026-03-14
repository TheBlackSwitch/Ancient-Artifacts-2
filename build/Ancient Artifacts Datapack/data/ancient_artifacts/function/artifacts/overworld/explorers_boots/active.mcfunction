execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s artifact matches 20 if score @s explored_chunks matches 200.. run function ancient_artifacts:artifacts/overworld/explorers_boots/drop_loot
execute if score @s artifact matches 21 if score @s explored_chunks matches 150.. run function ancient_artifacts:artifacts/overworld/explorers_boots/drop_loot
execute if score @s artifact matches 22 if score @s explored_chunks matches 100.. run function ancient_artifacts:artifacts/overworld/explorers_boots/drop_loot
execute if score @s artifact matches 23 if score @s explored_chunks matches 80.. run function ancient_artifacts:artifacts/overworld/explorers_boots/drop_loot
tag @s add explorers_boots
execute if score @s artifact matches 20 run tag @s add explorer_1
execute if score @s artifact matches 21 run tag @s add explorer_2
execute if score @s artifact matches 22 run tag @s add explorer_3
execute if score @s artifact matches 23 run tag @s add explorer_4
execute if score #5 tbs.slow_tick matches 5 run function ancient_artifacts:artifacts/overworld/explorers_boots/explore_chunk
