scoreboard players operation .total temp = .loot_chance temp
scoreboard players operation .total temp += .common_chance temp
scoreboard players operation .total temp += .uncommon_chance temp
scoreboard players operation .total temp += .rare_chance temp
scoreboard players operation .total temp += .unique_chance temp
scoreboard players set #100 temp 100
scoreboard players operation .loot_chance temp *= #100 temp
scoreboard players operation .common_chance temp *= #100 temp
scoreboard players operation .uncommon_chance temp *= #100 temp
scoreboard players operation .rare_chance temp *= #100 temp
scoreboard players operation .unique_chance temp *= #100 temp
execute store result score @s lPercent run scoreboard players operation .loot_chance temp /= .total temp
execute store result score @s cPercent run scoreboard players operation .common_chance temp /= .total temp
execute store result score @s uPercent run scoreboard players operation .uncommon_chance temp /= .total temp
execute store result score @s rPercent run scoreboard players operation .rare_chance temp /= .total temp
execute store result score @s qPercent run scoreboard players operation .unique_chance temp /= .total temp
