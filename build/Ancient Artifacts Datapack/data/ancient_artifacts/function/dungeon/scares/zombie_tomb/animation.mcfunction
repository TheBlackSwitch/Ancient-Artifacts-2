execute if score @s animation matches 12 run function ancient_artifacts:dungeon/scares/zombie_tomb/animation/nested_execute_0
execute if score @s animation matches 0..12 run function ancient_artifacts:dungeon/scares/zombie_tomb/animation/nested_execute_1
execute if score @s animation matches 11..17 run scoreboard players remove @s animation 1
