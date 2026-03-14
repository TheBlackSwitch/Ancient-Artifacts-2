scoreboard players set @s lazer_animation -18
execute store result score @s lazer_max run random value 5..15
scoreboard players set #44 temp 44
scoreboard players operation @s lazer_max *= #44 temp
