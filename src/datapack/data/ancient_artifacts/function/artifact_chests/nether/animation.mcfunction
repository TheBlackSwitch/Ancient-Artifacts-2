
execute if score @s animation matches 30:
    tag @s add opened
    particle minecraft:dust{color:[0.7294,0.1450,0.4078],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
    particle minecraft:trial_spawner_detection ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force
    playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
    playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["active"]}}

execute if score @s animation matches 14:
    playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 0.8
    playsound minecraft:block.grindstone.use master @a ~ ~ ~ 1 0.8
    item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}

execute if score @s animation matches 13 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}
execute if score @s animation matches 12 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
execute if score @s animation matches 11 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
execute if score @s animation matches 10 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}

execute if score @s animation matches 1..4 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/nether'}

execute if score @s animation matches 0 on target:
    if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
    function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/nether_artifact'}
    kill @e[type=#ancient_artifacts:technical,distance=..40,tag=mobspawn]

execute if score @s animation matches 0.. run scoreboard players remove @s animation 1