#grab chances
execute store result score .1 temp run data get entity @s data.chances.loot
execute store result score .2 temp run data get entity @s data.chances.common
execute store result score .3 temp run data get entity @s data.chances.uncommon
execute store result score .4 temp run data get entity @s data.chances.rare
execute store result score .5 temp run data get entity @s data.chances.unique

##calc the smallest
scoreboard players set .lSmall temp 0
scoreboard players set .cSmall temp 0
scoreboard players set .uSmall temp 0
scoreboard players set .rSmall temp 0
scoreboard players set .qSmall temp 0

execute if score @s lPercent < @s cPercent run scoreboard players add .lSmall temp 1
execute if score @s lPercent < @s uPercent run scoreboard players add .lSmall temp 1
execute if score @s lPercent < @s rPercent run scoreboard players add .lSmall temp 1
execute if score @s lPercent < @s qPercent run scoreboard players add .lSmall temp 1

execute if score @s cPercent < @s lPercent run scoreboard players add .cSmall temp 1
execute if score @s cPercent < @s uPercent run scoreboard players add .cSmall temp 1
execute if score @s cPercent < @s rPercent run scoreboard players add .cSmall temp 1
execute if score @s cPercent < @s qPercent run scoreboard players add .cSmall temp 1

execute if score @s uPercent < @s cPercent run scoreboard players add .uSmall temp 1
execute if score @s uPercent < @s lPercent run scoreboard players add .uSmall temp 1
execute if score @s uPercent < @s rPercent run scoreboard players add .uSmall temp 1
execute if score @s uPercent < @s qPercent run scoreboard players add .uSmall temp 1

execute if score @s rPercent < @s cPercent run scoreboard players add .rSmall temp 1
execute if score @s rPercent < @s uPercent run scoreboard players add .rSmall temp 1
execute if score @s rPercent < @s lPercent run scoreboard players add .rSmall temp 1
execute if score @s rPercent < @s qPercent run scoreboard players add .rSmall temp 1

execute if score @s qPercent < @s cPercent run scoreboard players add .qSmall temp 1
execute if score @s qPercent < @s uPercent run scoreboard players add .qSmall temp 1
execute if score @s qPercent < @s rPercent run scoreboard players add .qSmall temp 1
execute if score @s qPercent < @s lPercent run scoreboard players add .qSmall temp 1


#calculate the start and end values for every entry
execute store result entity @s data.chances.loot_end int 1 run scoreboard players get .1 temp
execute store result entity @s data.chances.common_start int 1 run scoreboard players add .1 temp 1

scoreboard players remove .1 temp 1

execute store result entity @s data.chances.common_end int 1 run scoreboard players operation .1 temp += .2 temp
execute store result entity @s data.chances.uncommon_start int 1 run scoreboard players add .1 temp 1

scoreboard players remove .1 temp 1

execute store result entity @s data.chances.uncommon_end int 1 run scoreboard players operation .1 temp += .3 temp
execute store result entity @s data.chances.rare_start int 1 run scoreboard players add .1 temp 1

scoreboard players remove .1 temp 1

execute store result entity @s data.chances.rare_end int 1 run scoreboard players operation .1 temp += .4 temp
execute store result entity @s data.chances.unique_start int 1 run scoreboard players add .1 temp 1

scoreboard players remove .1 temp 1

execute store result entity @s data.chances.total int 1 run scoreboard players operation .1 temp += .5 temp

function ancient_artifacts:artifact_cauldron/recipes/recycling/roll with entity @s data.chances



