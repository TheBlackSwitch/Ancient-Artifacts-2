execute if score @s animation matches 60 run playsound block.beacon.power_select block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 60 run function ancient_artifacts:artifact_cauldron/recipes/recycling/init_roll with entity @s data.chances
execute if score @s animation matches 20..60 positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:artifact_cauldron/recipes/recycling/particles
execute if score @s animation matches 13 positioned ~0.5 ~0.5 ~0.5 run playsound block.beacon.ambient block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 13 positioned ~0.5 ~0.5 ~0.5 run playsound block.beacon.ambient block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 13 positioned ~0.5 ~0.5 ~0.5 run playsound block.beacon.ambient block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 13 run tag @e[type=item, dy=0] add not_recycled
execute if score @s animation matches 13 if data entity @s {data: {roll: "loot"}} run function ancient_artifacts:artifact_cauldron/recipes/recycling/spawn_dungeon_loot
execute if score @s animation matches 13 unless data entity @s {data: {roll: "loot"}} run function ancient_artifacts:artifact_cauldron/recipes/recycling/spawn_artifact
execute if score @s animation matches 13 run data modify entity @s data.Items set value []
execute if score @s animation matches 2 run scoreboard players set @n[type=text_display, tag=fluid, dy=0] level 0
execute if score @s animation matches 2 run scoreboard players set @n[type=text_display, tag=fluid, dy=0] R -1
execute if score @s animation matches 2 run scoreboard players set @n[type=text_display, tag=fluid, dy=0] G -1
execute if score @s animation matches 2 run scoreboard players set @n[type=text_display, tag=fluid, dy=0] B -1
execute if score @s animation matches 2 run scoreboard players set @s current_recipe 0
execute if score @s animation matches 2 positioned ~0.5 ~0.5 ~0.5 run scoreboard players add @a[distance=..8] recycled 1
execute if score @s animation matches 2 run tag @s remove recycling
