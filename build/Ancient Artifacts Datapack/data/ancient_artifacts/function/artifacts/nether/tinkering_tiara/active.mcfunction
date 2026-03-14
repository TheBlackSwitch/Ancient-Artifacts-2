execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
tag @s add tinkering_tiara
execute if score #3 tbs.slow_tick matches 3 if score @s sneak matches 1.. anchored eyes run function ancient_artifacts:artifacts/nether/tinkering_tiara/raycast
execute if score #3 tbs.slow_tick matches 3 if score @s sneak matches 1.. if score .no_blockstates temp matches 0 run scoreboard players add @s tinker_time 1
execute if score @s tinker_time matches 2000 run advancement grant @s only ancient_artifacts:artifacts/nether/tinkering_expert
