execute store result score .1 temp run random value 0..2
scoreboard players operation @s animation += .1 temp

execute if score @s animation matches ..79 at @s unless block ~ ~ ~ basalt run setblock ~ ~ ~ lava destroy
execute if score @s animation matches ..79 at @s unless block ~ ~ ~ basalt run kill @e[type=item,nbt={Item:{id:"minecraft:basalt"}},limit=1,sort=nearest]
execute if score @s animation matches ..79 at @s unless block ~ ~ ~ basalt run kill @s

execute if score @s animation matches 20..22 run data modify entity @s item.components."minecraft:item_model" set value "ancient_artifacts:block/breaking/progress_1"
execute if score @s animation matches 40..42 run data modify entity @s item.components."minecraft:item_model" set value "ancient_artifacts:block/breaking/progress_2"
execute if score @s animation matches 60..62 run data modify entity @s item.components."minecraft:item_model" set value "ancient_artifacts:block/breaking/progress_3"

execute if score @s animation matches 80.. at @s run setblock ~ ~ ~ lava destroy
execute if score @s animation matches 80.. at @s run kill @e[type=item,nbt={Item:{id:"minecraft:basalt"}},limit=1,sort=nearest]
execute if score @s animation matches 80.. run kill @s