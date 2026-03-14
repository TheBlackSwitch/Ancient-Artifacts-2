execute unless entity @s[nbt=!{inGround: 1b}, nbt=!{DealtDamage: 1b}] run return run tag @s add ag_homing_checked
execute at @s run particle minecraft:gust ~ ~ ~ 0.2 0.2 0.2 0.3 3 normal
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 10 normal
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 5 1.5
data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
data modify entity @s NoGravity set value 1b
tag @s add homing
