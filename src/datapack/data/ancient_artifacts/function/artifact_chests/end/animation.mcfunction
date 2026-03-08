#animation
execute if score @s animation matches 60:
    tag @s add opened
    particle minecraft:dust{color:[0.4704,0.1450,0.4078],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
    particle minecraft:trial_spawner_detection_ominous ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force
    playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
    playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1 
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["active"]}}

execute if score @s animation matches 44:
    playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 0.8
    playsound minecraft:block.shulker_box.open block @a ~ ~ ~ 1 0.8
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}

execute if score @s animation matches 43 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}
execute if score @s animation matches 42 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
execute if score @s animation matches 41 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
execute if score @s animation matches 40 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}

execute if score @s animation matches 31..34 on target run function ancient_artifacts:artifact_chests/drop_loot_end {loot_table:'ancient_artifacts:dungeon_loot/end'}

execute if score @s animation matches 30 on target:
    execute if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
    playsound minecraft:block.shulker_box.close block @a ~ ~ ~ 1 0.8
    function ancient_artifacts:artifact_chests/drop_loot_end {loot_table:'ancient_artifacts:dungeon_loot/end_artifact'}
    kill @e[type=#ancient_artifacts:technical,distance=..40,tag=mobspawn]

execute if score @s animation matches 22 run playsound minecraft:block.ender_chest.close block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 20 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
execute if score @s animation matches 19 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
execute if score @s animation matches 18 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}
execute if score @s animation matches 17 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}
execute if score @s animation matches 16 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["close_2"]}}

#tick animation
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1