execute if entity @e[type=marker, tag=dungeon_marker, distance=..10, tag=!weak_effects] run scoreboard players set @s target_effect 1
execute if entity @e[type=marker, tag=dungeon_marker, distance=..10, tag=weak_effects] run scoreboard players set @s target_effect 2
execute unless entity @e[type=marker, tag=dungeon_marker, distance=..15] run scoreboard players set @s target_effect 0
execute unless score @s target_effect = @s effect_type if score @s effect_delay matches 1.. run scoreboard players remove @s effect_delay 1
execute if score @s target_effect = @s effect_type run scoreboard players set @s effect_delay 10
execute unless score @s effect_delay matches 1.. run scoreboard players operation @s effect_type = @s target_effect
