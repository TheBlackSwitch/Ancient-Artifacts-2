execute if score @s animation matches 2 run function ancient_artifacts:dungeon/scares/scary_explosion/animation/nested_execute_0
execute if score @s animation matches 1 run function ancient_artifacts:dungeon/scares/scary_explosion/animation/nested_execute_1
execute if score @s animation matches 0..2 run function ancient_artifacts:dungeon/scares/scary_explosion/animation/nested_execute_2
execute if score @s animation matches 0 run function ancient_artifacts:dungeon/scares/scary_explosion/animation/nested_execute_3
scoreboard players remove @s animation 1
