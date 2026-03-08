execute store result score @s random run random value 0..8
$execute if score @s random matches 0 run data modify storage $(storage) $(path) set value "minecraft:archer_pottery_sherd"
$execute if score @s random matches 1 run data modify storage $(storage) $(path) set value "minecraft:heartbreak_pottery_sherd"
$execute if score @s random matches 2 run data modify storage $(storage) $(path) set value "minecraft:prize_pottery_sherd"
$execute if score @s random matches 3 run data modify storage $(storage) $(path) set value "minecraft:danger_pottery_sherd"
$execute if score @s random matches 4 run data modify storage $(storage) $(path) set value "minecraft:mourner_pottery_sherd"
$execute if score @s random matches 5 run data modify storage $(storage) $(path) set value "minecraft:miner_pottery_sherd"
$execute if score @s random matches 6..11 run data modify storage $(storage) $(path) set value "minecraft:brick"
