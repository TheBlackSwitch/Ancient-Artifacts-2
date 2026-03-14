execute if score @s repair_delay matches 1.. if score @s chest_break_progress matches 1.. run scoreboard players remove @s repair_delay 1
execute if score @s repair_delay matches 0 run scoreboard players remove @s chest_break_progress 1
execute if score @s repair_delay matches 0 run scoreboard players set @s repair_delay 10
execute if score @s chest_break_progress matches 0 run data modify entity @e[type=item_display, tag=break, limit=1, sort=nearest] item.components."minecraft:item_model" set value "ancient_artifacts:block/air"
execute if score @s chest_break_progress matches 1 run data modify entity @e[type=item_display, tag=break, limit=1, sort=nearest] item.components."minecraft:item_model" set value "ancient_artifacts:block/breaking/progress_1"
execute if score @s chest_break_progress matches 2 run data modify entity @e[type=item_display, tag=break, limit=1, sort=nearest] item.components."minecraft:item_model" set value "ancient_artifacts:block/breaking/progress_2"
execute if score @s chest_break_progress matches 3 run data modify entity @e[type=item_display, tag=break, limit=1, sort=nearest] item.components."minecraft:item_model" set value "ancient_artifacts:block/breaking/progress_3"
execute if score @s chest_break_progress matches 4 run function ancient_artifacts:ancient_altar/break
data remove entity @s attack
