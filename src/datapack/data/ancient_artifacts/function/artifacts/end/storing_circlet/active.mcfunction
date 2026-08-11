tag @s add storing_circlet

execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 145 run tag @s add storing_circlet_1
execute if score @s artifact matches 146 run tag @s add storing_circlet_2
execute if score @s artifact matches 147 run tag @s add storing_circlet_3
execute if score @s artifact matches 148 run tag @s add storing_circlet_4
execute if score @s artifact matches 149 run tag @s add storing_circlet_5
execute if score @s artifact matches 150 run tag @s add storing_circlet_6

scoreboard players set .sneak temp 0
execute if predicate theblackswitch:__version__/__patch__/movement_check/sneak run scoreboard players set .sneak temp 1

execute if score @s prev_sneak matches 0 if score .sneak temp matches 1 run function ancient_artifacts:artifacts/end/storing_circlet/sneak_toggle
scoreboard players operation @s prev_sneak = .sneak temp

execute if score #40 tbs.slow_tick matches 40 if score @s extra_inv_open matches 1 run function ancient_artifacts:artifacts/end/storing_circlet/check_expert
