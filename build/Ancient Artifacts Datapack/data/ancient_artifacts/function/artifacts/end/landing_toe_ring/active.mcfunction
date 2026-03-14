execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s artifact matches 142 run attribute @s safe_fall_distance modifier add landing_toe_ring 7 add_value
execute if score @s artifact matches 143 run attribute @s safe_fall_distance modifier add landing_toe_ring 14 add_value
execute if score @s artifact matches 144 run attribute @s safe_fall_distance modifier add landing_toe_ring 21 add_value
execute if score @s artifact matches 145 run attribute @s safe_fall_distance modifier add landing_toe_ring 28 add_value
tag @s add landing_toe_ring
