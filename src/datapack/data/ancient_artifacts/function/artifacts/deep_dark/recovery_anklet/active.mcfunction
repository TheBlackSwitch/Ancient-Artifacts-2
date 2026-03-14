execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 105.. run tag @s add recovery_1
execute if score @s artifact matches 106.. run tag @s add recovery_2
execute if score @s artifact matches 107.. run tag @s add recovery_3
execute if score @s artifact matches 108.. run tag @s add recovery_4
execute if score @s artifact matches 109 run tag @s add recovery_xp
tag @s add recovery