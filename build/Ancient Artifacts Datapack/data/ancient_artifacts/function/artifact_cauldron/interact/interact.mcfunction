execute if predicate ancient_artifacts:holding_shears unless entity @n[type=marker, tag=control, tag=sheared, dy=0] align xyz run return run function ancient_artifacts:artifact_cauldron/interact/shear_cauldron
execute if block ~ ~ ~ water_cauldron[level=1] align xyz if score @n[type=text_display, tag=fluid, dy=0] level matches 3.. run item replace entity @s weapon.mainhand with potion[minecraft:potion_contents={potion: "minecraft:water"}] 1
execute if block ~ ~ ~ water_cauldron[level=1] align xyz as @n[type=text_display, tag=fluid, dy=0] if score @s level matches ..2 run scoreboard players add @s level 1
execute if block ~ ~ ~ water_cauldron[level=2] align xyz as @n[type=text_display, tag=fluid, dy=0] if score @s level matches ..1 run scoreboard players add @s level 2
execute if block ~ ~ ~ water_cauldron[level=3] align xyz if score @n[type=text_display, tag=fluid, dy=0] level matches 1.. run item replace entity @s weapon.mainhand with water_bucket 1
execute if block ~ ~ ~ water_cauldron[level=3] align xyz as @n[type=text_display, tag=fluid, dy=0] run scoreboard players set @s level 3
execute if block ~ ~ ~ lava_cauldron run item replace entity @s weapon.mainhand with lava_bucket 1
execute if block ~ ~ ~ powder_snow_cauldron run item replace entity @s weapon.mainhand with powder_snow_bucket 1
setblock ~ ~ ~ cauldron
