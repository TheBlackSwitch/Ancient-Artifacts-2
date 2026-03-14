tag @s remove player_detected
execute as @e[tag=sculk_heart] run data modify entity @s item.components."minecraft:item_model" set value "ancient_artifacts:entity/sculk_heart/inactive"
scoreboard players set @s heart_state 1