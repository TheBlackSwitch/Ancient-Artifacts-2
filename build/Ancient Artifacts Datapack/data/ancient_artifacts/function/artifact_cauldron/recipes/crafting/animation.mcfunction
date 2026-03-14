execute if score @s animation matches 90 run playsound minecraft:block.respawn_anchor.charge master @a ~0.5 ~0.5 ~0.5 1 1.3
execute if score @s animation matches 90 run playsound minecraft:block.enchantment_table.use master @a ~0.5 ~0.5 ~0.5 1 0
execute if score @s animation matches 90 run playsound block.beacon.ambient block @a ~0.5 ~0.5 ~0.5 1 0
execute if score @s animation matches 90 run playsound block.beacon.ambient block @a ~0.5 ~0.5 ~0.5 1 0
execute if score #3 tbs.slow_tick matches 2 if score @s animation matches 40..90 at @s positioned ~ ~-0.5 ~ run function ancient_artifacts:artifact_cauldron/recipes/crafting/particle
execute if score @s animation matches 13..80 run particle dust{color: [1.0d, 0.0d, 1.0d], scale: 2} ~0.5 ~0.5 ~0.5 0.2 0.2 0.2 0 1 force
execute if score @s animation matches 13..70 run particle dust{color: [1.0d, 0.0d, 1.0d], scale: 2} ~0.5 ~0.5 ~0.5 0.2 0.2 0.2 0 1 force
execute if score @s animation matches 13..60 run particle dust{color: [1.0d, 0.0d, 1.0d], scale: 2} ~0.5 ~0.5 ~0.5 0.3 0.3 0.3 0 1 force
execute if score @s animation matches 13..33 run particle dust{color: [0.616d, 0.0d, 1.0d], scale: 2} ~0.5 ~0.5 ~0.5 0.4 0 0.4 0 10 force
execute if score @s animation matches 1..12 run particle dust{color: [0.984d, 0.455d, 0.871d], scale: 2} ~0.5 ~0.5 ~0.5 0.3 0.3 0.3 0 10 force
execute if score @s animation matches 33 run playsound block.beacon.ambient block @a ~0.5 ~0.5 ~0.5 1 1
execute if score @s animation matches 13 run playsound block.smithing_table.use block @a ~0.5 ~0.5 ~0.5 1 1.2
execute if score @s animation matches 13 run playsound block.beacon.ambient block @a ~0.5 ~0.5 ~0.5 1 1.498
execute if score @s animation matches 13 run playsound block.beacon.ambient block @a ~0.5 ~0.5 ~0.5 1 1.498
execute if score @s animation matches 13 run function ancient_artifacts:artifact_cauldron/recipes/crafting/drop_artifact with entity @s data.craft
execute if score @s animation matches 13 at @s as @a[distance=..5] run function ancient_artifacts:advancements/triggers/craft_artifact
execute if score @s animation matches 35 run scoreboard players set @e[tag=artifact_cauldron, tag=fluid, limit=1, sort=nearest] level 0
execute if score @s animation matches 35 run scoreboard players set @e[tag=artifact_cauldron, tag=fluid, limit=1, sort=nearest] R -1
execute if score @s animation matches 35 run scoreboard players set @e[tag=artifact_cauldron, tag=fluid, limit=1, sort=nearest] G -1
execute if score @s animation matches 35 run scoreboard players set @e[tag=artifact_cauldron, tag=fluid, limit=1, sort=nearest] B -1
execute if score @s animation matches 1 run scoreboard players set @s current_recipe 0
execute if score @s animation matches 1 run tag @s remove crafting
execute if score @s animation matches 35 run data modify entity @s data.Items set value []
