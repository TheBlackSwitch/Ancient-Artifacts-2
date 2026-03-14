execute if score @s animation matches 100 run playsound entity.warden.sonic_charge block @a ~ ~ ~ 1 0.7
execute if score @s animation matches 50 run function ancient_artifacts:sculk_heart/heart/animation/nested_execute_9
execute if score @s animation matches 1.. run scoreboard players remove @s animation 1
