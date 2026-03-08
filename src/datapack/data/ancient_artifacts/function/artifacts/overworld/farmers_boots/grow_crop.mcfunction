scoreboard players add @s boosted_crops 1

execute if block ~ ~ ~ #ancient_artifacts:crops[age=0] run scoreboard players set @s age 0
execute if block ~ ~ ~ #ancient_artifacts:crops[age=1] run scoreboard players set @s age 1
execute if block ~ ~ ~ #ancient_artifacts:crops[age=2] run scoreboard players set @s age 2
execute if block ~ ~ ~ #ancient_artifacts:crops[age=3] run scoreboard players set @s age 3
execute if block ~ ~ ~ #ancient_artifacts:crops[age=4] run scoreboard players set @s age 4
execute if block ~ ~ ~ #ancient_artifacts:crops[age=5] run scoreboard players set @s age 5
execute if block ~ ~ ~ #ancient_artifacts:crops[age=6] run scoreboard players set @s age 6
execute if block ~ ~ ~ #ancient_artifacts:crops[age=7] run scoreboard players set @s age 7

execute store result score .2 temp run random value 1..3
scoreboard players operation @s age += .2 temp

##Effects
execute align xyz run particle minecraft:happy_villager ~0.5 ~0.2 ~0.5 0.3 0.1 0.3 0 10 force
execute align xyz run playsound minecraft:item.bone_meal.use block @a ~ ~ ~ 1 1

##Wheat
execute if block ~ ~ ~ wheat if score @s age matches 1 run setblock ~ ~ ~ wheat[age=1] replace
execute if block ~ ~ ~ wheat if score @s age matches 2 run setblock ~ ~ ~ wheat[age=2] replace
execute if block ~ ~ ~ wheat if score @s age matches 3 run setblock ~ ~ ~ wheat[age=3] replace
execute if block ~ ~ ~ wheat if score @s age matches 4 run setblock ~ ~ ~ wheat[age=4] replace
execute if block ~ ~ ~ wheat if score @s age matches 5 run setblock ~ ~ ~ wheat[age=5] replace
execute if block ~ ~ ~ wheat if score @s age matches 6 run setblock ~ ~ ~ wheat[age=6] replace
execute if block ~ ~ ~ wheat if score @s age matches 7.. run setblock ~ ~ ~ wheat[age=7] replace

##Carrots
execute if block ~ ~ ~ carrots if score @s age matches 1 run setblock ~ ~ ~ carrots[age=1] replace
execute if block ~ ~ ~ carrots if score @s age matches 2 run setblock ~ ~ ~ carrots[age=2] replace
execute if block ~ ~ ~ carrots if score @s age matches 3 run setblock ~ ~ ~ carrots[age=3] replace
execute if block ~ ~ ~ carrots if score @s age matches 4 run setblock ~ ~ ~ carrots[age=4] replace
execute if block ~ ~ ~ carrots if score @s age matches 5 run setblock ~ ~ ~ carrots[age=5] replace
execute if block ~ ~ ~ carrots if score @s age matches 6 run setblock ~ ~ ~ carrots[age=6] replace
execute if block ~ ~ ~ carrots if score @s age matches 7.. run setblock ~ ~ ~ carrots[age=7] replace

##Potatoes
execute if block ~ ~ ~ potatoes if score @s age matches 1 run setblock ~ ~ ~ potatoes[age=1] replace
execute if block ~ ~ ~ potatoes if score @s age matches 2 run setblock ~ ~ ~ potatoes[age=2] replace
execute if block ~ ~ ~ potatoes if score @s age matches 3 run setblock ~ ~ ~ potatoes[age=3] replace
execute if block ~ ~ ~ potatoes if score @s age matches 4 run setblock ~ ~ ~ potatoes[age=4] replace
execute if block ~ ~ ~ potatoes if score @s age matches 5 run setblock ~ ~ ~ potatoes[age=5] replace
execute if block ~ ~ ~ potatoes if score @s age matches 6 run setblock ~ ~ ~ potatoes[age=6] replace
execute if block ~ ~ ~ potatoes if score @s age matches 7.. run setblock ~ ~ ~ potatoes[age=7] replace

##Beetroots
execute if block ~ ~ ~ beetroots if score @s age matches 1 run setblock ~ ~ ~ beetroots[age=1] replace
execute if block ~ ~ ~ beetroots if score @s age matches 2 run setblock ~ ~ ~ beetroots[age=2] replace
execute if block ~ ~ ~ beetroots if score @s age matches 3.. run setblock ~ ~ ~ beetroots[age=3] replace

##Berries
execute if block ~ ~ ~ sweet_berry_bush if score @s age matches 1 run setblock ~ ~ ~ sweet_berry_bush[age=1] replace
execute if block ~ ~ ~ sweet_berry_bush if score @s age matches 2 run setblock ~ ~ ~ sweet_berry_bush[age=2] replace
execute if block ~ ~ ~ sweet_berry_bush if score @s age matches 3.. run setblock ~ ~ ~ sweet_berry_bush[age=3] replace

##Torchflower
execute if block ~ ~ ~ torchflower_crop if score @s age matches 1 run setblock ~ ~ ~ torchflower_crop[age=1]
execute if block ~ ~ ~ torchflower_crop if score @s age matches 2.. run setblock ~ ~ ~ torchflower

##Pithcher Plant
execute if block ~ ~ ~ pitcher_crop if score @s age matches 1 run setblock ~ ~ ~ pitcher_crop[age=1] replace
execute if block ~ ~ ~ pitcher_crop if score @s age matches 2 run setblock ~ ~ ~ pitcher_crop[age=2] replace
execute if block ~ ~ ~ pitcher_crop if score @s age matches 3 run setblock ~ ~ ~ pitcher_crop[age=3] replace
execute if block ~ ~ ~ pitcher_crop if score @s age matches 3 run setblock ~ ~1 ~ pitcher_crop[age=3,half=upper] replace
execute if block ~ ~ ~ pitcher_crop if score @s age matches 4.. run setblock ~ ~ ~ pitcher_crop[age=4] replace
execute if block ~ ~ ~ pitcher_crop if score @s age matches 4.. run setblock ~ ~1 ~ pitcher_crop[age=4,half=upper] replace

##Nether Wart
execute if block ~ ~ ~ nether_wart if score @s age matches 1 run setblock ~ ~ ~ nether_wart[age=1] replace
execute if block ~ ~ ~ nether_wart if score @s age matches 2 run setblock ~ ~ ~ nether_wart[age=2] replace
execute if block ~ ~ ~ nether_wart if score @s age matches 3.. run setblock ~ ~ ~ nether_wart[age=3] replace

##Cocoa
execute if block ~ ~ ~ cocoa[facing=north] if score @s age matches 1 run setblock ~ ~ ~ cocoa[age=1,facing=north] replace
execute if block ~ ~ ~ cocoa[facing=east] if score @s age matches 1 run setblock ~ ~ ~ cocoa[age=1,facing=east] replace
execute if block ~ ~ ~ cocoa[facing=south] if score @s age matches 1 run setblock ~ ~ ~ cocoa[age=1,facing=south] replace
execute if block ~ ~ ~ cocoa[facing=west] if score @s age matches 1 run setblock ~ ~ ~ cocoa[age=1,facing=west] replace
execute if block ~ ~ ~ cocoa[facing=north] if score @s age matches 2.. run setblock ~ ~ ~ cocoa[age=2,facing=north] replace
execute if block ~ ~ ~ cocoa[facing=east] if score @s age matches 2.. run setblock ~ ~ ~ cocoa[age=2,facing=east] replace
execute if block ~ ~ ~ cocoa[facing=south] if score @s age matches 2.. run setblock ~ ~ ~ cocoa[age=2,facing=south] replace
execute if block ~ ~ ~ cocoa[facing=west] if score @s age matches 2.. run setblock ~ ~ ~ cocoa[age=2,facing=west] replace

##Glow Berries
execute if block ~ ~ ~ cave_vines if score @s age matches 1 run setblock ~ ~ ~ cave_vines[berries=true] replace

