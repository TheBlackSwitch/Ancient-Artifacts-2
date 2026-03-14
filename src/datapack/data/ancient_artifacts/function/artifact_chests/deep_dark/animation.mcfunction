
execute if score @s animation matches 50:
    tag @s add opened
    particle minecraft:dust{color:[0.007,0.211,0.271],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
    particle minecraft:trial_spawner_detection_ominous ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force
    playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
    playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["active"]}}

execute if score @s animation matches 34:
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:5}
    particle block{block_state:"sculk"} ~ ~0.5 ~ 0.3 0 0.3 0 10 force
    playsound minecraft:block.sculk_sensor.place block @a ~ ~ ~ 2 0
    playsound minecraft:block.sculk_sensor.place block @a ~ ~ ~ 2 2
    playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 0.5 1.2
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}

execute if score @s animation matches 33 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}

execute if score @s animation matches 32:
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:4}

execute if score @s animation matches 31:
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.10f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:3}

execute if score @s animation matches 30:
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:2}

execute if score @s animation matches 29 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:1}

execute if score @s animation matches 25 run playsound minecraft:block.sculk_sensor.clicking block @a ~ ~ ~ 1 0

execute if score @s animation matches 20 run particle minecraft:dust{color:[0.07,0.294,0.451],scale:1} ~ ~ ~ 0.3 0.3 0.3 1 15 force

execute if score @s animation matches 10:
    particle shriek{delay:0} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:5} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:10} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:15} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:20} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:25} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:30} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:35} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:40} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:45} ~ ~0.3 ~ 0 0 0 1 1 force
    particle shriek{delay:50} ~ ~0.3 ~ 0 0 0 1 1 force
    playsound minecraft:block.sculk_shrieker.shriek block @a ~ ~ ~ 1 1
    execute on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark'}

execute if score @s animation matches 8 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark'}
execute if score @s animation matches 6 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark'}
execute if score @s animation matches 4 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark'}


execute if score @s animation matches 2 on target:
    execute if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
    function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark_artifact'}

execute if score @s animation matches 0 on target:
    function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table:'ancient_artifacts:dungeon_loot/deep_dark_artifact'}
    kill @e[type=#ancient_artifacts:technical,distance=..40,tag=mobspawn]


#tick animation
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1


