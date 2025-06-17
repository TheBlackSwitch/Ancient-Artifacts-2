execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

scoreboard players set .succes temp 0

gamerule commandBlockOutput false


execute if score @s artifact matches 67 if score @s walk matches 1.. unless block ~ ~ ~ lava store success score .succes temp run fill ~-1 ~-2 ~-1 ~1 ~ ~1 repeating_command_block{Command:"function ancient_artifacts:artifacts/nether/cooling_boots/place",auto:1b} replace lava[level=0]
execute if score @s artifact matches 68 if score @s walk matches 1.. unless block ~ ~ ~ lava store success score .succes temp run fill ~-2 ~-2 ~-2 ~2 ~ ~2 repeating_command_block{Command:"function ancient_artifacts:artifacts/nether/cooling_boots/place",auto:1b} replace lava[level=0]
execute if score @s artifact matches 69 if score @s walk matches 1.. unless block ~ ~ ~ lava store success score .succes temp run fill ~-3 ~-3 ~-3 ~3 ~ ~3 repeating_command_block{Command:"function ancient_artifacts:artifacts/nether/cooling_boots/place",auto:1b} replace lava[level=0]

execute if score @s artifact matches 67 if score @s sprint matches 1.. unless block ~ ~ ~ lava store success score .succes temp run fill ~-1 ~-2 ~-1 ~1 ~ ~1 repeating_command_block{Command:"function ancient_artifacts:artifacts/nether/cooling_boots/place",auto:1b} replace lava[level=0]
execute if score @s artifact matches 68 if score @s sprint matches 1.. unless block ~ ~ ~ lava store success score .succes temp run fill ~-2 ~-2 ~-2 ~2 ~ ~2 repeating_command_block{Command:"function ancient_artifacts:artifacts/nether/cooling_boots/place",auto:1b} replace lava[level=0]
execute if score @s artifact matches 69 if score @s sprint matches 1.. unless block ~ ~ ~ lava store success score .succes temp run fill ~-3 ~-3 ~-3 ~3 ~ ~3 repeating_command_block{Command:"function ancient_artifacts:artifacts/nether/cooling_boots/place",auto:1b} replace lava[level=0]


execute if score .succes temp matches 1 run scoreboard players set @s cooling_boots_slow 40

execute if score @s cooling_boots_slow matches 1.. run attribute @s movement_speed modifier add cooling_boots -0.2 add_multiplied_total
execute if score @s cooling_boots_slow matches 0 run attribute @s movement_speed modifier remove cooling_boots

execute unless block ~ ~-0.5 ~ basalt unless block ~ ~-0.5 ~ lava unless block ~ ~-0.5 ~ repeating_command_block run scoreboard players set @s cooling_boots_slow 0

execute if score @s walk matches 1.. if score .succes temp matches 1 unless block ~ ~ ~ lava run scoreboard players add @s lava_walked 1
execute if score @s walk matches 1.. if score .succes temp matches 1 unless block ~ ~ ~ lava run scoreboard players add @s lava_walked 1


execute if score @s cooling_boots_slow matches 1.. run scoreboard players remove @s cooling_boots_slow 1