execute as @e[tag=dungeon_gen, tag=!generated] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=walk] at @s run tag @e[tag=dungeon_gen, distance=..3.5] add generated
execute as @e[tag=dungeon_gen, tag=!generated, sort=random, limit=100] at @s if entity @e[tag=dungeon_center, distance=..120] unless entity @e[tag=spawn, distance=..1000] run function ancient_artifacts:dungeon/generate
execute as @e[tag=dungeon_center, tag=!gen_finish] at @s unless entity @e[tag=spawn, distance=..1000] unless entity @e[tag=dungeon_gen, tag=!generated, distance=..120] run function ancient_artifacts:dungeon/finish
