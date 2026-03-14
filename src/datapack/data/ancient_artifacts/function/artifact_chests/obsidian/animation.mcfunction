
# animation
execute if score @s animation matches 35:
    execute on target run function ancient_artifacts:advancements/triggers/open_obsidian_chest
    tag @s add opened
    particle minecraft:dust{color:[1.0,0.0,1.0],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
    particle minecraft:trial_spawner_detection_ominous ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force
    playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.8
    execute on target if predicate ancient_artifacts:survival run clear @s amethyst_shard[!custom_data~{smithed:{ignore:{crafting:true}}},!custom_data~{compound:true}] 1
    playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["active_3"]}}

execute if score @s animation matches 19:
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:5}
    playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 1.2
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}

execute if score @s animation matches 18 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}

execute if score @s animation matches 17:
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:4}

execute if score @s animation matches 16:
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.10f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:3}

execute if score @s animation matches 15:   
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}
    data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:2}

execute if score @s animation matches 14 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:1}
execute if score @s animation matches 5..9 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/overworld'}
execute if score @s animation matches 3..4 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/overworld_luck'}
execute if score @s animation matches 0..1 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/artifacts_all'}

execute if score @s animation matches 0:
    kill @e[type=#ancient_artifacts:technical,distance=..40,tag=mobspawn]
    execute on target if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1

# tick animation
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1


