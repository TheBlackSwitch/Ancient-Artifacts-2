execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 88 run attribute @s max_health modifier add beefy_crystal 4 add_value
execute if score @s artifact matches 89 run attribute @s max_health modifier add beefy_crystal 8 add_value
execute if score @s artifact matches 90..91 run attribute @s max_health modifier add beefy_crystal 12 add_value
execute if score @s artifact matches 92 run attribute @s max_health modifier add beefy_crystal 20 add_value
execute if score @s artifact matches 93 run attribute @s max_health modifier add beefy_crystal 30 add_value

execute if score @s artifact matches 88 run attribute @s attack_damage modifier add beefy_crystal -0.2 add_multiplied_total
execute if score @s artifact matches 89 run attribute @s attack_damage modifier add beefy_crystal -0.35 add_multiplied_total
execute if score @s artifact matches 90.. run attribute @s attack_damage modifier add beefy_crystal -0.5 add_multiplied_total
execute if score @s artifact matches 93 run attribute @s attack_damage modifier add beefy_crystal -0.65 add_multiplied_total

execute if score @s artifact matches 91 run effect give @s slowness 1 0 false
execute if score @s artifact matches 92 run effect give @s slowness 1 1 false
execute if score @s artifact matches 93 run effect give @s slowness 1 2 false


execute if score @s artifact matches 91 run effect give @s resistance 1 0 false
execute if score @s artifact matches 92.. run effect give @s resistance 1 1 false

execute if score @s artifact matches 88 run attribute @s scale modifier add beefy_crystal 0.1 add_multiplied_total
execute if score @s artifact matches 89 run attribute @s scale modifier add beefy_crystal 0.2 add_multiplied_total
execute if score @s artifact matches 90 run attribute @s scale modifier add beefy_crystal 0.3 add_multiplied_total
execute if score @s artifact matches 91 run attribute @s scale modifier add beefy_crystal 0.4 add_multiplied_total
execute if score @s artifact matches 92 run attribute @s scale modifier add beefy_crystal 0.5 add_multiplied_total
execute if score @s artifact matches 93 run attribute @s scale modifier add beefy_crystal 1.0 add_multiplied_total

tag @s add beefy_crystal