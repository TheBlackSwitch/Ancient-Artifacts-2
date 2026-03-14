particle minecraft:dust{color: [0.0d, 0.6d, 0.5d], scale: 1} ~ ~ ~
execute if score #loop_count temp matches 1000.. run return fail
scoreboard players add #loop_count temp 1
execute if entity @s[distance=..0.5] at @s run return run function ancient_artifacts:sculk_heart/heart/beam/nested_return_0
execute facing entity @s feet positioned ^ ^ ^0.2 run function ancient_artifacts:sculk_heart/heart/beam
