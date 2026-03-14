execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s artifact matches 18 run tag @s add deactivator_1
execute if score @s artifact matches 19 run tag @s add deactivator_2
execute if score @s artifact matches 19 run tag @s add deactivator_3
execute if score #10 tbs.slow_tick matches 10 store result score .1 temp if entity @a[tag=deactivated, distance=..20]
execute if score #10 tbs.slow_tick matches 10 if score .1 temp matches 3.. run advancement grant @s only ancient_artifacts:artifacts/overworld/deactivation_expert
