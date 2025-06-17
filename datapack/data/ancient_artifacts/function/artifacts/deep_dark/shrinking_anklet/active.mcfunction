execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 111 run attribute @s scale modifier add shrinking_anklet -0.2 add_multiplied_total
execute if score @s artifact matches 112 run attribute @s scale modifier add shrinking_anklet -0.4 add_multiplied_total
execute if score @s artifact matches 113 run attribute @s scale modifier add shrinking_anklet -0.6 add_multiplied_total
execute if score @s artifact matches 114 run attribute @s scale modifier add shrinking_anklet -0.8 add_multiplied_total

execute if score @s artifact matches 111 run attribute @s attack_speed modifier add shrinking_anklet 0.15 add_multiplied_total
execute if score @s artifact matches 112 run attribute @s attack_speed modifier add shrinking_anklet 0.25 add_multiplied_total
execute if score @s artifact matches 113 run attribute @s attack_speed modifier add shrinking_anklet 0.375 add_multiplied_total
execute if score @s artifact matches 114 run attribute @s attack_speed modifier add shrinking_anklet 0.5 add_multiplied_total

execute if score @s artifact matches 111 run attribute @s block_break_speed modifier add shrinking_anklet 0.15 add_multiplied_total
execute if score @s artifact matches 112 run attribute @s block_break_speed modifier add shrinking_anklet 0.25 add_multiplied_total
execute if score @s artifact matches 113 run attribute @s block_break_speed modifier add shrinking_anklet 0.375 add_multiplied_total
execute if score @s artifact matches 114 run attribute @s block_break_speed modifier add shrinking_anklet 0.5 add_multiplied_total

execute if score @s artifact matches 111 run attribute @s movement_speed modifier add shrinking_anklet 0.15 add_multiplied_total
execute if score @s artifact matches 112 run attribute @s movement_speed modifier add shrinking_anklet 0.25 add_multiplied_total
execute if score @s artifact matches 113 run attribute @s movement_speed modifier add shrinking_anklet 0.375 add_multiplied_total
execute if score @s artifact matches 114 run attribute @s movement_speed modifier add shrinking_anklet 0.5 add_multiplied_total

execute if score @s artifact matches 113 run tag @s add shrunk