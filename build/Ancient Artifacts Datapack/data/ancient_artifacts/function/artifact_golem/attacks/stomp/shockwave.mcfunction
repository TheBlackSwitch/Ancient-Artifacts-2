execute unless loaded ^ ^ ^1.75 run return run kill @s
scoreboard players operation #scale temp = @s shockwave_distance
scoreboard players set #61 temp 58
scoreboard players operation #scale temp *= #61 temp
scoreboard players remove #scale temp 550
execute store result entity @s transformation.scale[0] float 0.0001 run scoreboard players get #scale temp
data modify entity @s start_interpolation set value 0
tp @s ^ ^ ^1.75
scoreboard players add @s shockwave_distance 35
execute if score @s shockwave_distance matches 1700.. run kill @s
