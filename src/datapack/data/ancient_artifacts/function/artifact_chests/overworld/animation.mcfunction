# animation
execute if score @s animation matches 30:
    tag @s add opened
    particle minecraft:dust{color:[1.0,0.0,1.0],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
    particle minecraft:trial_spawner_detection ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force
    playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
    playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["active"]}}

execute if score @s animation matches 14:
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:5}
    playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 1.2
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}

execute if score @s animation matches 13 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}

execute if score @s animation matches 12:
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:4}

execute if score @s animation matches 11:
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.10f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:3}

execute if score @s animation matches 10:
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:2}

execute if score @s animation matches 9 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:1}

execute if score @s animation matches 1..4 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/overworld'}

execute if score @s animation matches 0 on target:
    execute if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
    function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/overworld_artifact'}
    kill @e[type=#ancient_artifacts:technical,distance=..7,tag=mobspawn]


#tick animation
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1


