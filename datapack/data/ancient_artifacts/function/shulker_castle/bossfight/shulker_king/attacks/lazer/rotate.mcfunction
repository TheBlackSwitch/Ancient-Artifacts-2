rotate @s ~ ~

tag @s add source
execute unless entity @e[type=item_display,tag=shulker_king_lazer,distance=..3,tag=!source] run return run tag @s remove source
tag @s remove source


execute store result score .rand.yaw temp run random value -5000..5000
execute store result score .rand.pitch temp run random value -5000..5000

execute store result score .rot.yaw temp run data get entity @s Rotation[0] 1000
execute store result score .rot.pitch temp run data get entity @s Rotation[1] 1000

execute store result entity @s Rotation[0] float 0.001 run scoreboard players operation .rand.yaw temp += .rot.yaw temp
execute store result entity @s Rotation[1] float 0.001 run scoreboard players operation .rand.pitch temp += .rot.pitch temp

tag @s remove INIT