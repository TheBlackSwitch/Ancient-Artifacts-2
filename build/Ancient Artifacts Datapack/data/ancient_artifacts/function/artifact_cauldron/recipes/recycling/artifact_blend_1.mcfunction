function ancient_artifacts:artifact_cauldron/recipes/particle/generic_item
scoreboard players set @s current_recipe 10
execute as @n[type=item, dy=0, nbt={Item: {components: {"minecraft:custom_data": {artifact_blend: true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/process_item
execute align xyz run scoreboard players set @n[dy=0, type=text_display, tag=fluid] R 209
execute align xyz run scoreboard players set @n[dy=0, type=text_display, tag=fluid] G 189
execute align xyz run scoreboard players set @n[dy=0, type=text_display, tag=fluid] B 255
execute align xyz run scoreboard players add @n[dy=0, type=text_display, tag=fluid] level 1
data modify entity @s data.chances set value {loot: 9b, common: 7b, uncommon: 5b, rare: 3b, unique: 1b}
scoreboard players set @s lPercent 36
scoreboard players set @s cPercent 28
scoreboard players set @s uPercent 20
scoreboard players set @s rPercent 12
scoreboard players set @s qPercent 4
scoreboard players set @s essences 0
