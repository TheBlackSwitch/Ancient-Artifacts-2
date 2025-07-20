##opening
#holding no amethyst
execute if data entity @s[tag=!opened] interaction on target unless entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard"}}] run playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute if data entity @s[tag=!opened] interaction on target unless entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard"}}] run title @s actionbar {"text": "It seems like an amethyst shard is needed...","color": "light_purple"}
execute if data entity @s[tag=!opened] interaction on target unless entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard"}}] positioned ~ ~-0.5 ~ run data remove entity @e[type=interaction,tag=artifact_chest,tag=overworld,limit=1,sort=nearest] interaction
#holding amethyst but it's a compound
execute if data entity @s[tag=!opened] interaction on target if data entity @s SelectedItem.components run playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute if data entity @s[tag=!opened] interaction on target if data entity @s SelectedItem.components run title @s actionbar {"text": "It seems like an amethyst shard is needed...","color": "light_purple"}
execute if data entity @s[tag=!opened] interaction on target if data entity @s SelectedItem.components positioned ~ ~-0.5 ~ run data remove entity @e[type=interaction,tag=artifact_chest,tag=overworld,limit=1,sort=nearest] interaction

#holding amethyst
execute if data entity @s[tag=!opened] interaction unless score @s animation matches 1.. on target if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard"}}] unless data entity @s SelectedItem.components run function ancient_artifacts:advancements/triggers/open_overworld_chest
execute if data entity @s[tag=!opened] interaction unless score @s animation matches 1.. on target if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard"}}] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run scoreboard players set @s animation 30

#animation
execute if score @s animation matches 30 run tag @s add opened

execute if score @s animation matches 30 run particle minecraft:dust{color:[1.0,0.0,1.0],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
execute if score @s animation matches 30 run particle minecraft:trial_spawner_detection ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force

execute if score @s animation matches 30 run playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
execute if score @s animation matches 30 on target if predicate ancient_artifacts:survival run clear @s amethyst_shard[!minecraft:custom_data] 1
execute if score @s animation matches 30 run playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1
execute if score @s animation matches 30 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["active"]}}
execute if score @s animation matches 14 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:5}
execute if score @s animation matches 14 run playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 1.2
execute if score @s animation matches 14 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}
execute if score @s animation matches 13 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}
execute if score @s animation matches 12 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
execute if score @s animation matches 11 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
execute if score @s animation matches 10 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}
execute if score @s animation matches 12 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:4}
execute if score @s animation matches 11 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.10f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:3}
execute if score @s animation matches 10 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:2}
execute if score @s animation matches 9 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:1}
execute if score @s animation matches 0 on target if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
execute if score @s animation matches 1..4 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/overworld'}
execute if score @s animation matches 0 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/overworld_artifact'}


#tick animation
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1


