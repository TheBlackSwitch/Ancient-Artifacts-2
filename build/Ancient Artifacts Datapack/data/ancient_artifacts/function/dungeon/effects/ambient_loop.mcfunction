execute if score @s ambient_timer matches 1.. run scoreboard players remove @s ambient_timer 1
execute unless score @s ambient_timer matches 1.. if score @s effect_type matches 1 run playsound ancient_artifacts:ambient.dungeon ambient @s ~ ~ ~ 0.7 1
execute unless score @s ambient_timer matches 1.. if score @s effect_type matches 1 run scoreboard players set @s ambient_timer 145
execute unless score @s ambient_timer matches 1.. if score @s effect_type matches 2 run playsound ancient_artifacts:ambient.drip ambient @s ~ ~ ~ 1 1
execute unless score @s ambient_timer matches 1.. if score @s effect_type matches 2 run scoreboard players set @s ambient_timer 40
execute if score @s effect_type matches 0 run stopsound @s ambient ancient_artifacts:ambient.dungeon
execute if score @s effect_type matches 0 run stopsound @s ambient ancient_artifacts:ambient.drip
