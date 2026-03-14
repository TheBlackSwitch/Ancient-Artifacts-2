execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s attack matches 1.. if score @s artifact matches 73 run scoreboard players set #multiplier temp 2
execute if score @s attack matches 1.. if score @s artifact matches 73 run function ancient_artifacts:artifacts/nether/life_steal_necklace/calc_damage
execute if score @s attack matches 1.. if score @s artifact matches 74 run scoreboard players set #multiplier temp 4
execute if score @s attack matches 1.. if score @s artifact matches 74 run function ancient_artifacts:artifacts/nether/life_steal_necklace/calc_damage
execute if score @s attack matches 1.. if score @s artifact matches 75 run scoreboard players set #multiplier temp 6
execute if score @s attack matches 1.. if score @s artifact matches 75 run function ancient_artifacts:artifacts/nether/life_steal_necklace/calc_damage
execute if score @s attack matches 1.. if score @s artifact matches 76 run scoreboard players set #multiplier temp 8
execute if score @s attack matches 1.. if score @s artifact matches 76 run function ancient_artifacts:artifacts/nether/life_steal_necklace/calc_damage
tag @s add life_steal_necklace