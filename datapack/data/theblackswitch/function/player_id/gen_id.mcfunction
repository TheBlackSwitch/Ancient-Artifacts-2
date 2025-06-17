tag @s add tbs.has_id
execute unless score .current tbs.ID matches 1.. run scoreboard players set .current tbs.ID 0
scoreboard players operation @s tbs.ID = .current tbs.ID
scoreboard players add .current tbs.ID 1