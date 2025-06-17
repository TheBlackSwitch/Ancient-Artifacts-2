scoreboard players operation .1 temp = @s shockwave_distance
scoreboard players operation .1 temp *= .62 const
scoreboard players remove .1 temp 62
execute store result entity @s transformation.scale[0] float 0.0001 run scoreboard players get .1 temp
execute if loaded ^ ^ ^0.35 run tp @s ^ ^ ^0.35
scoreboard players add @s shockwave_distance 7
execute unless loaded ^ ^ ^0.35 run kill @s
execute if score @s shockwave_distance matches 1700.. run kill @s
