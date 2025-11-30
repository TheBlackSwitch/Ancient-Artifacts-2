##opening
#holding no amethyst
execute if data entity @s[tag=!opened] interaction on target unless items entity @s weapon.mainhand amethyst_shard[!custom_data] run playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute if data entity @s[tag=!opened] interaction on target unless items entity @s weapon.mainhand amethyst_shard[!custom_data] run data modify storage smithed.actionbar:input message set value {json:{"text": "It seems like an amethyst shard is needed...","color": "light_purple"},priority:"notification"}
execute if data entity @s[tag=!opened] interaction on target unless items entity @s weapon.mainhand amethyst_shard[!custom_data] run function #smithed.actionbar:message
execute if data entity @s[tag=!opened] interaction on target unless items entity @s weapon.mainhand amethyst_shard[!custom_data] positioned ~ ~-0.5 ~ run data remove entity @e[type=interaction,tag=artifact_chest,tag=overworld,limit=1,sort=nearest] interaction

#holding amethyst
execute if data entity @s[tag=!opened] interaction unless score @s animation matches 1.. on target if items entity @s weapon.mainhand amethyst_shard[!custom_data] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run scoreboard players add @s amethyst_count 1

##Amethyst insert
execute if data entity @s[tag=!opened] interaction if score @s amethyst_count matches 1 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run particle minecraft:dust{color:[1.0,0.0,1.0],scale:1} ~ ~ ~ 0.3 0.3 0.3 1 15 force
execute if data entity @s[tag=!opened] interaction if score @s amethyst_count matches 1 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["active_1"]}}
execute if data entity @s[tag=!opened] interaction if score @s amethyst_count matches 1 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
execute if data entity @s[tag=!opened] interaction if score @s amethyst_count matches 1 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] on target if predicate ancient_artifacts:survival run clear @s amethyst_shard[!minecraft:custom_data] 1

execute if data entity @s[tag=!opened] interaction if score @s amethyst_count matches 2 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run particle minecraft:dust{color:[1.0,0.0,1.0],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
execute if data entity @s[tag=!opened] interaction if score @s amethyst_count matches 2 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["active_2"]}}
execute if data entity @s[tag=!opened] interaction if score @s amethyst_count matches 2 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.7
execute if data entity @s[tag=!opened] interaction if score @s amethyst_count matches 2 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data] unless data entity @s SelectedItem.components as @e[type=interaction,limit=1,sort=nearest,tag=!opened] on target if predicate ancient_artifacts:survival run clear @s amethyst_shard[!minecraft:custom_data] 1

execute if data entity @s[tag=!opened] interaction if score @s amethyst_count matches 3 run scoreboard players set @s animation 35

#animation
execute if score @s animation matches 35 on target run function ancient_artifacts:advancements/triggers/open_obsidian_chest
execute if score @s animation matches 35 run tag @s add opened

execute if score @s animation matches 35 run particle minecraft:dust{color:[1.0,0.0,1.0],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
execute if score @s animation matches 35 run particle minecraft:trial_spawner_detection ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force

execute if score @s animation matches 35 run playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.8
execute if score @s animation matches 35 on target if predicate ancient_artifacts:survival run clear @s amethyst_shard[!minecraft:custom_data] 1
execute if score @s animation matches 35 run playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1
execute if score @s animation matches 35 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["active_3"]}}
execute if score @s animation matches 19 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:5}
execute if score @s animation matches 19 run playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 1.2
execute if score @s animation matches 19 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}
execute if score @s animation matches 18 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}
execute if score @s animation matches 17 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
execute if score @s animation matches 16 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
execute if score @s animation matches 15 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}
execute if score @s animation matches 17 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:4}
execute if score @s animation matches 16 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.10f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:3}
execute if score @s animation matches 15 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:2}
execute if score @s animation matches 14 run data merge entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:1}
execute if score @s animation matches 0 on target if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
execute if score @s animation matches 5..9 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/overworld'}
execute if score @s animation matches 3..4 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/overworld_luck'}
execute if score @s animation matches 0..1 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/artifacts_all'}


#tick animation
execute if data entity @s[tag=!opened] interaction run data remove entity @s interaction
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1


