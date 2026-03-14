execute as @e[type=warden, distance=..20] at @s run function ancient_artifacts:sculk_heart/delete_warden
execute if score @s animation matches 0..20 run function ancient_artifacts:sculk_heart/heart/animation/nested_execute_6
execute if score @s animation matches 21.. run scoreboard players remove @s animation 1
