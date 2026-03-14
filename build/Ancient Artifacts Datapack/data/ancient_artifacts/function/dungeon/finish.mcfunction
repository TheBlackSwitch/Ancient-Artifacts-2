kill @e[tag=dungeon_gen, distance=..120]
tag @s add gen_finish
execute as @e[type=item, distance=..120] at @s unless entity @a[distance=..10] run kill @s
tag @e[tag=dungeon_marker] remove mobspawn
