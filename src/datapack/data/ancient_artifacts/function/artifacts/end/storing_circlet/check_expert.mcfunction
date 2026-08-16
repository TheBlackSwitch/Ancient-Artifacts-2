
scoreboard players set .total_count temp 0

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:10b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:11b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:12b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:13b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:14b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:15b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:16b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:17b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:18b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:19b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:20b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:21b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:22b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:23b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:24b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:25b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:26b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:27b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:28b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:29b}].count
scoreboard players operation .total_count temp += .count temp

scoreboard players set .count temp 0
execute store result score .count temp run data get entity @s Inventory[{Slot:30b}].count
scoreboard players operation .total_count temp += .count temp

execute if score .total_count temp matches 1344 run advancement grant @s only ancient_artifacts:artifacts/end/storing_expert