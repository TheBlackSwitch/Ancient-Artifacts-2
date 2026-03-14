execute store result score .motion_y temp run data get entity @s Motion[1] 1000
execute if score .motion_y temp matches ..0 run effect give @s unluck 1 6
execute if score .motion_y temp matches ..0 unless block ~ ~-1 ~ air run tag @s remove launch_pad_launched
execute if score .motion_y temp matches ..0 unless block ~ ~-1 ~ air run effect clear @s unluck
