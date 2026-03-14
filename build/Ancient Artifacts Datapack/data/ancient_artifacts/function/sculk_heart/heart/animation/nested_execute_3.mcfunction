scoreboard players add @s animation 1
execute if score @s animation matches ..42 as @a[distance=..5, gamemode=!spectator] run function ancient_artifacts:sculk_heart/heart/animation/nested_execute_1
execute if score @s animation matches 38 run function ancient_artifacts:sculk_heart/heart/detect
execute if score @s animation matches 50 run return run function ancient_artifacts:sculk_heart/heart/init
execute unless entity @a[distance=..5, gamemode=!spectator] run function ancient_artifacts:sculk_heart/heart/animation/nested_execute_2
