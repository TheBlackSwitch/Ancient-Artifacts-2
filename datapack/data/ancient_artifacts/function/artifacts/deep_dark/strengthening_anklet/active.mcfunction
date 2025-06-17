execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 102 run attribute @s attack_damage modifier add strengthening_anklet 0.2 add_multiplied_total
execute if score @s artifact matches 103 run attribute @s attack_damage modifier add strengthening_anklet 0.3 add_multiplied_total
execute if score @s artifact matches 104 run attribute @s attack_damage modifier add strengthening_anklet 0.5 add_multiplied_total
execute if score @s artifact matches 105 run attribute @s attack_damage modifier add strengthening_anklet 0.6 add_multiplied_total

execute if score @s artifact matches 102 run attribute @s max_health modifier add strengthening_anklet -0.1 add_multiplied_total
execute if score @s artifact matches 103 run attribute @s max_health modifier add strengthening_anklet -0.25 add_multiplied_total
execute if score @s artifact matches 104 run attribute @s max_health modifier add strengthening_anklet -0.35 add_multiplied_total
execute if score @s artifact matches 105 run attribute @s max_health modifier add strengthening_anklet -0.5 add_multiplied_total
execute if score @s artifact matches 104.. run tag @s add strengthed