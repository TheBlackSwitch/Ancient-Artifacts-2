##opening
#holding no quartz compound
execute if data entity @s[tag=!opened] interaction on target unless entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"deep_dark"}}}}] run playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute if data entity @s[tag=!opened] interaction on target unless entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"deep_dark"}}}}] run title @s actionbar {"text": "It seems like an echoing compound in needed...","color": "light_purple"}
execute if data entity @s[tag=!opened] interaction on target unless entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"deep_dark"}}}}] positioned ~ ~-0.5 ~ run data remove entity @e[type=interaction,tag=artifact_chest,tag=deep_dark,limit=1,sort=nearest] interaction
#holding quartz compound
execute if data entity @s[tag=!opened] interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"deep_dark"}}}}] run function ancient_artifacts:advancements/triggers/open_deep_dark_chest
execute if data entity @s[tag=!opened] interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"deep_dark"}}}}] as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run scoreboard players set @s animation 50

#animation
execute if score @s animation matches 50 run tag @s add opened

execute if score @s animation matches 50 run particle minecraft:dust{color:[0.007,0.211,0.271],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
execute if score @s animation matches 50 run particle minecraft:trial_spawner_detection_ominous ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force

execute if score @s animation matches 50 run playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
execute if score @s animation matches 50 on target if predicate ancient_artifacts:survival run clear @s amethyst_shard[custom_data={compound:1b,type:"deep_dark"}] 1
execute if score @s animation matches 50 run playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1
execute if score @s animation matches 50 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["active"]}}
execute if score @s animation matches 34 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:5}

execute if score @s animation matches 34 run particle block{block_state:"sculk"} ~ ~0.5 ~ 0.3 0 0.3 0 10 force
execute if score @s animation matches 34 run playsound minecraft:block.sculk_sensor.place block @a ~ ~ ~ 2 0
execute if score @s animation matches 34 run playsound minecraft:block.sculk_sensor.place block @a ~ ~ ~ 2 2
execute if score @s animation matches 34 run playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 0.5 1.2

execute if score @s animation matches 34 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}
execute if score @s animation matches 33 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}
execute if score @s animation matches 32 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
execute if score @s animation matches 31 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
execute if score @s animation matches 30 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}
execute if score @s animation matches 32 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:4}
execute if score @s animation matches 31 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.10f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:3}
execute if score @s animation matches 30 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:2}
execute if score @s animation matches 29 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:1}

execute if score @s animation matches 25 run playsound minecraft:block.sculk_sensor.clicking block @a ~ ~ ~ 1 0
execute if score @s animation matches 20 run particle minecraft:dust{color:[0.07,0.294,0.451],scale:1} ~ ~ ~ 0.3 0.3 0.3 1 15 force

execute if score @s animation matches 10 run particle shriek{delay:0} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:5} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:10} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:15} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:20} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:25} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:30} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:35} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:40} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:45} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run particle shriek{delay:50} ~ ~0.3 ~ 0 0 0 1 1 force
execute if score @s animation matches 10 run playsound minecraft:block.sculk_shrieker.shriek block @a ~ ~ ~ 1 1

execute if score @s animation matches 10 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark'}
execute if score @s animation matches 8 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark'}
execute if score @s animation matches 6 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark'}
execute if score @s animation matches 4 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark'}


execute if score @s animation matches 2 on target if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
execute if score @s animation matches 2 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark_artifact'}

execute if score @s animation matches 0 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark_artifact'}


#tick animation
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1


