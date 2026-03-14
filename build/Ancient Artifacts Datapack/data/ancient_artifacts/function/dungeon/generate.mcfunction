execute unless loaded ^ ^ ^8 run return fail
particle campfire_signal_smoke ~ ~ ~ 0.05 0.05 0.05 0 5 force
scoreboard players set @s checked 0
tag @s add generated
execute positioned ^ ^ ^5 if entity @e[tag=dungeon_marker, distance=..3] at @s if entity @e[tag=dungeon_gen, distance=0.1..3.5] run kill @s
execute if entity @s[tag=!walk] positioned ^ ^ ^5 if entity @e[tag=dungeon_marker, distance=..3] at @s unless entity @e[tag=dungeon_gen, distance=0.1..3.5] run function ancient_artifacts:dungeon/target/wall/rotation
execute positioned ^ ^ ^5 unless entity @e[tag=dungeon_marker, distance=..3] if entity @s[tag=target_random] at @s run function ancient_artifacts:dungeon/target/random/random
execute positioned ^ ^ ^5 unless entity @e[tag=dungeon_marker, distance=..3] if entity @s[tag=target_hall] at @s run function ancient_artifacts:dungeon/target/hall/rotation
execute positioned ^ ^ ^5 unless entity @e[tag=dungeon_marker, distance=..3] if entity @s[tag=target_wall] at @s run function ancient_artifacts:dungeon/target/wall/rotation
execute positioned ^ ^ ^5 unless entity @e[tag=dungeon_marker, distance=..3] if entity @s[tag=target_room] at @s run function ancient_artifacts:dungeon/target/room/rotation
execute positioned ^ ^ ^5 unless entity @e[tag=dungeon_marker, distance=..3] if entity @s[tag=target_stair_up] at @s run function ancient_artifacts:dungeon/target/stair/up
execute positioned ^ ^ ^5 unless entity @e[tag=dungeon_marker, distance=..3] if entity @s[tag=target_stair_down] at @s run function ancient_artifacts:dungeon/target/stair/down
