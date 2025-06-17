execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

attribute @s minecraft:safe_fall_distance modifier add travelers_boots 2 add_value
execute if score @s artifact matches 23..24 run attribute @s minecraft:jump_strength modifier add travelers_boots 0.2 add_multiplied_base
execute if score @s artifact matches 24..25 run attribute @s minecraft:movement_speed modifier add travelers_boots 0.2 add_multiplied_base
execute if score @s artifact matches 25..26 run attribute @s minecraft:jump_strength modifier add travelers_boots 0.5 add_multiplied_base
execute if score @s artifact matches 26 run attribute @s minecraft:movement_speed modifier add travelers_boots 0.4 add_multiplied_base

execute if score @s artifact matches 27 run attribute @s minecraft:jump_strength modifier add travelers_boots 0.8 add_multiplied_base
execute if score @s artifact matches 27 run attribute @s minecraft:movement_speed modifier add travelers_boots 0.6 add_multiplied_base

execute if score @s artifact matches 26 run tag @s add travelers_boots_max
execute if score @s artifact matches 25.. run tag @s add travelers_boots_lvl3-4