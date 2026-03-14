execute if score @s animation matches 7 run function ancient_artifacts:dungeon/scares/scary_skeleton/animation/nested_execute_0
execute if score @s animation matches 1..5 run playsound block.beacon.power_select hostile @a ~ ~ ~ 5 0
execute if score @s animation matches 3..5 run function ancient_artifacts:dungeon/scares/scary_skeleton/animation/nested_execute_1
execute if score @s animation matches 1..2 run particle dust{color: [0.8d, 0.0d, 0.0d], scale: 2} ~ ~ ~ 0.1 0.5 0.1 0 20 force
execute if score @s animation matches 0 run function ancient_artifacts:dungeon/scares/scary_skeleton/animation/nested_execute_2
scoreboard players remove @s animation 1
