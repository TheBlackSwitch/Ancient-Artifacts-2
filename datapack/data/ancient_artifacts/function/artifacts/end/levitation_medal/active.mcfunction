execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 133 if predicate ancient_artifacts:on_ground run scoreboard players set @s levitation_power_max 50
execute if score @s artifact matches 134 if predicate ancient_artifacts:on_ground run scoreboard players set @s levitation_power_max 100
execute if score @s artifact matches 135 if predicate ancient_artifacts:on_ground run scoreboard players set @s levitation_power_max 150
execute if score @s artifact matches 136 if predicate ancient_artifacts:on_ground run scoreboard players set @s levitation_power_max 200
execute if score @s artifact matches 137.. if predicate ancient_artifacts:on_ground run scoreboard players set @s levitation_power_max 250


execute if predicate ancient_artifacts:on_ground unless score @s levitation_power >= @s levitation_power_max run scoreboard players add @s levitation_power 5

execute if score @s artifact matches 133..136 if score @s sneak matches 1.. if score @s levitation_power matches 1.. run effect give @s levitation 1 2
execute if score @s artifact matches 137 if score @s sneak matches 1.. if score @s levitation_power matches 1.. run effect give @s levitation 1 5
execute if score @s artifact matches 138 if score @s sneak matches 1.. if score @s levitation_power matches 1.. run effect give @s levitation 1 8
execute if score @s sneak matches 1.. if score @s levitation_power matches 1.. run scoreboard players remove @s levitation_power 1

execute unless score @s sneak matches 1.. run effect clear @s levitation

execute if score @s sneak matches 1.. if score @s levitation_power matches 1.. run scoreboard players add @s levitate_ticks 1

scoreboard players set .1200 temp 1200

scoreboard players operation @s levitate_mins = @s levitate_ticks
scoreboard players operation @s levitate_mins /= .1200 temp

tag @s add levitation_medal