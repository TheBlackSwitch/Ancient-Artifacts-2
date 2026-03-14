execute unless score .target temp = .fraction temp run scoreboard players operation .target temp -= .fraction temp
scoreboard players set #5 temp 5
execute unless score .target temp = .fraction temp run scoreboard players operation .target temp /= #5 temp
execute unless score .target temp = .fraction temp run execute store result score .current_pos temp run data get entity @s Pos[1] 1000
execute unless score .target temp = .fraction temp run scoreboard players operation .target temp += .current_pos temp
execute unless score .target temp = .fraction temp run execute store result entity @s Pos[1] double 0.001 run scoreboard players get .target temp
