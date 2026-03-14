execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s attack matches 1.. if score @s artifact matches 62 run scoreboard players set #multiplier temp 3
execute if score @s attack matches 1.. if score @s artifact matches 62 run function ancient_artifacts:artifacts/nether/saturating_necklace/calc_damage
execute if score @s attack matches 1.. if score @s artifact matches 63 run scoreboard players set #multiplier temp 6
execute if score @s attack matches 1.. if score @s artifact matches 63 run function ancient_artifacts:artifacts/nether/saturating_necklace/calc_damage
execute if score @s attack matches 1.. if score @s artifact matches 64 run scoreboard players set #multiplier temp 9
execute if score @s attack matches 1.. if score @s artifact matches 64 run function ancient_artifacts:artifacts/nether/saturating_necklace/calc_damage
execute if score @s attack matches 1.. if score @s artifact matches 65 run scoreboard players set #multiplier temp 12
execute if score @s attack matches 1.. if score @s artifact matches 65 run function ancient_artifacts:artifacts/nether/saturating_necklace/calc_damage
tag @s add saturating_necklace
