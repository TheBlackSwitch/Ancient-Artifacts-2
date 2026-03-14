particle dust{color: [1.0d, 0.6d, 1.0d], scale: 2} ~ ~ ~ 0.1 0.1 0.1 0.2 4
forceload add 0 0
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 run tp @s ~ ~ ~
data modify storage ancient_artifacts:item Motion set from entity @s Pos
execute store result score .motion_y temp run data get entity @s Pos[1] 1000
execute if score .motion_y temp matches -100.. run scoreboard players add .motion_y temp 250
execute store result storage ancient_artifacts:item Motion[1] double 0.001 run scoreboard players get .motion_y temp
tp @s ~ ~ ~
data modify entity @s Motion[0] set from storage ancient_artifacts:item Motion[0]
data modify entity @s Motion[1] set from storage ancient_artifacts:item Motion[1]
data modify entity @s Motion[2] set from storage ancient_artifacts:item Motion[2]
execute unless items entity @s container.0 * unless items entity @s container.1 * unless items entity @s container.2 * unless items entity @s container.3 * unless items entity @s container.4 * unless items entity @s container.5 * unless items entity @s container.6 * unless items entity @s container.7 * unless items entity @s container.8 * unless items entity @s container.9 * unless items entity @s container.10 * unless items entity @s container.11 * unless items entity @s container.12 * unless items entity @s container.13 * unless items entity @s container.14 * unless items entity @s container.15 * unless items entity @s container.16 * unless items entity @s container.17 * unless items entity @s container.18 * unless items entity @s container.19 * unless items entity @s container.20 * unless items entity @s container.21 * unless items entity @s container.22 * unless items entity @s container.23 * unless items entity @s container.24 * unless items entity @s container.25 * unless items entity @s container.26 * unless items entity @s container.27 * unless items entity @s container.28 * unless items entity @s container.29 * unless items entity @s container.30 * unless items entity @s container.31 * unless items entity @s container.32 * unless items entity @s container.33 * unless items entity @s container.34 * unless items entity @s container.35 * run return fail
scoreboard players add @s attract_time 1
execute if score @s attract_time matches 120.. as @a[predicate=theblackswitch:v2.0/patch-1/player_id/match_search] run advancement grant @s only ancient_artifacts:artifacts/end/attractive_expert
