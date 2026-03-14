execute store result score @s X run random value -1000..1000
execute store result score @s Y run random value -1000..1000
execute store result score @s Z run random value -1000..1000
scoreboard players set #spawn_range temp 4
execute store result storage ancient_artifacts:spawn X int 0.001 run scoreboard players operation @s X *= #spawn_range temp
execute store result storage ancient_artifacts:spawn Y int 0.001 run scoreboard players operation @s Y *= #spawn_range temp
execute store result storage ancient_artifacts:spawn Z int 0.001 run scoreboard players operation @s Z *= #spawn_range temp
execute store success score .3 temp run function ancient_artifacts:sculk_heart/waves/veryfy_pos with storage ancient_artifacts:spawn
scoreboard players add @s raycast_limit 1
execute if score .3 temp matches 0 unless score @s raycast_limit matches 400.. run function ancient_artifacts:sculk_heart/waves/set_pos
