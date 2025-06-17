execute facing entity @n[type=item_display,tag=pulse,tag=INIT] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 run tp @s ~ ~ ~
data modify storage ancient_artifacts:entity Motion set from entity @s Pos
tp @s ~ ~ ~
execute store result score .motion_y temp run data get storage ancient_artifacts:entity Motion[1]
execute if score .motion_y temp matches -100.. run scoreboard players add .motion_y temp 250
execute store result storage ancient_artifacts:entity Motion[1] double 0.001 run scoreboard players get .motion_y temp
data modify entity @s Motion set from storage ancient_artifacts:entity Motion