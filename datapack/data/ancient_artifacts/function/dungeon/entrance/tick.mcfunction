
##statue placement
execute unless data entity @s data.statue_phase run data modify entity @s data.statue_phase set value 0
execute unless data entity @s data.prev_statue_phase run data modify entity @s data.prev_statue_phase set value -1
execute store result score .1 temp run data get entity @s data.statue_phase
execute store result score .2 temp run data get entity @s data.prev_statue_phase

execute unless entity @e[tag=spawn,distance=..1000] unless score .1 temp = .2 temp run function ancient_artifacts:dungeon/entrance/place_statue with entity @s data

execute if score .3 slow_tick matches 3 unless entity @e[tag=spawn,distance=..1000] unless data entity @s data.stairs_generated positioned ~ ~-8 ~ run function ancient_artifacts:dungeon/entrance/gen_stairs