execute store result score .health temp run data get entity @n[type=shulker,tag=shulker_king,distance=..10] Health

execute store result entity @n[type=shulker,tag=shulker_king,distance=..10] Health float 1 run scoreboard players add .health temp 5

kill @s