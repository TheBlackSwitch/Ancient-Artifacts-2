execute store result score @s random if entity @e[tag=dungeon_center, distance=10..30] positioned ^ ^ ^-3 unless entity @e[tag=dungeon_marker, limit=1, sort=nearest, scores={ends=2..}] run random value 1..8
execute store result score @s random if entity @e[tag=dungeon_center, distance=31..50] run random value 1..9
execute store result score @s random if entity @e[tag=dungeon_center, distance=51..70] run random value 2..10
execute store result score @s random if entity @e[tag=dungeon_center, distance=80..] run random value 5..10
execute store result score @s random if entity @e[tag=dungeon_center, distance=10..30] positioned ^ ^ ^-3 if entity @e[tag=dungeon_marker, limit=1, sort=nearest, scores={ends=2..}] run random value 1..3
execute store result score @s random if entity @e[tag=dungeon_center, distance=..10] run random value 1..3
execute unless score @s Y matches -50..30 store result score @s random run random value 5..10
scoreboard players set @s checked 0
execute if score @s random matches 4..10 positioned ^ ^ ^-3 run scoreboard players add @e[tag=dungeon_marker, limit=1, sort=nearest] ends 1
execute unless score @s checked matches 1 if score @s random matches 1..3 run function ancient_artifacts:dungeon/target/hall/rotation
execute unless score @s checked matches 1 if score @s random matches 4..6 run function ancient_artifacts:dungeon/target/wall/rotation
execute unless score @s checked matches 1 if score @s random matches 7..8 run function ancient_artifacts:dungeon/target/room/rotation
execute unless score @s checked matches 1 if score @s random matches 9..10 run function ancient_artifacts:dungeon/target/wall/rotation
