##opening
#holding no chorus compound
execute if data entity @s[tag=!opened] interaction on target unless entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"end"}}}}] run playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute if data entity @s[tag=!opened] interaction on target unless entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"end"}}}}] run title @s actionbar {"text": "It seems like a chorus compound is needed...","color": "light_purple"}
execute if data entity @s[tag=!opened] interaction on target unless entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"end"}}}}] positioned ~ ~-0.5 ~ run data remove entity @e[type=interaction,tag=artifact_chest,tag=end,limit=1,sort=nearest] interaction
#holding chorus compound
execute if data entity @s[tag=!opened] interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"end"}}}}] run function ancient_artifacts:advancements/triggers/open_end_chest
execute if data entity @s[tag=!opened] interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{compound:1b,type:"end"}}}}] as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run scoreboard players set @s animation 60



#animation
execute if score @s animation matches 60 run tag @s add opened

execute if score @s animation matches 60 run particle minecraft:dust{color:[0.4704,0.1450,0.4078],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
execute if score @s animation matches 60 run particle minecraft:trial_spawner_detection_ominous ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force

execute if score @s animation matches 60 run playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
execute if score @s animation matches 60 run playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1

execute if score @s animation matches 60 on target if predicate ancient_artifacts:survival run clear @s amethyst_shard[minecraft:custom_data={compound:1b,type:"end"}] 1

execute if score @s animation matches 60 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["active"]}}
execute if score @s animation matches 44 run playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 44 run playsound minecraft:block.shulker_box.open block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 44 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}
execute if score @s animation matches 43 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}
execute if score @s animation matches 42 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
execute if score @s animation matches 41 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
execute if score @s animation matches 40 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}
execute if score @s animation matches 30 on target if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
execute if score @s animation matches 31..34 on target run function ancient_artifacts:artifact_chests/drop_loot_end {loot_table:'ancient_artifacts:dungeon_loot/end'}
execute if score @s animation matches 30 on target run function ancient_artifacts:artifact_chests/drop_loot_end {loot_table:'ancient_artifacts:dungeon_loot/end_artifact'}
execute if score @s animation matches 22 run playsound minecraft:block.ender_chest.close block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 30 run playsound minecraft:block.shulker_box.close block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 20 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
execute if score @s animation matches 19 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
execute if score @s animation matches 18 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}
execute if score @s animation matches 17 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}
execute if score @s animation matches 16 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["close_2"]}}

#tick animation
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1