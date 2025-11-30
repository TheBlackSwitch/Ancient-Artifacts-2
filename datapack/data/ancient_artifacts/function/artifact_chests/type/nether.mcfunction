##opening
#holding no quartz compound
execute if data entity @s[tag=!opened] interaction on target unless items entity @s weapon.mainhand *[custom_data~{compound:1b, type:"nether"}] run playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute if data entity @s[tag=!opened] interaction on target unless items entity @s weapon.mainhand *[custom_data~{compound:1b, type:"nether"}] run data modify storage smithed.actionbar:input message set value {json:{"text": "It seems like a quartz compound is needed...","color": "light_purple"},priority:"notification"}
execute if data entity @s[tag=!opened] interaction on target unless items entity @s weapon.mainhand *[custom_data~{compound:1b, type:"nether"}] run function #smithed.actionbar:message
execute if data entity @s[tag=!opened] interaction on target unless items entity @s weapon.mainhand *[custom_data~{compound:1b, type:"nether"}] positioned ~ ~-0.5 ~ run data remove entity @n[type=interaction,tag=artifact_chest,tag=nether] interaction
#holding quartz compound
execute if data entity @s[tag=!opened] interaction on target if items entity @s weapon.mainhand *[custom_data~{compound:1b, type:"nether"}] run function ancient_artifacts:advancements/triggers/open_nether_chest
execute if data entity @s[tag=!opened] interaction on target if items entity @s weapon.mainhand *[custom_data~{compound:1b, type:"nether"}] run scoreboard players set @n[type=interaction,tag=!opened] animation 30

#animation
execute if score @s animation matches 30 run tag @s add opened

execute if score @s animation matches 30 run particle minecraft:dust{color:[0.7294,0.1450,0.4078],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
execute if score @s animation matches 30 run particle minecraft:trial_spawner_detection ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force

execute if score @s animation matches 30 run playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
execute if score @s animation matches 30 run playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1

execute if score @s animation matches 30 on target if predicate ancient_artifacts:survival run clear @s *[minecraft:custom_data={compound:1b,type:"nether"}] 1

execute if score @s animation matches 30 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["active"]}}
execute if score @s animation matches 14 run playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 14 run playsound minecraft:block.grindstone.use master @a ~ ~ ~ 1 0.8
execute if score @s animation matches 14 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_1"]}}
execute if score @s animation matches 13 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_2"]}}
execute if score @s animation matches 12 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_3"]}}
execute if score @s animation matches 11 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_4"]}}
execute if score @s animation matches 10 run item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {"function":"set_custom_model_data",strings:{mode:"replace_all",values:["open_5"]}}
execute if score @s animation matches 0 on target if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
execute if score @s animation matches 1..4 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/nether'}
execute if score @s animation matches 0 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table:'ancient_artifacts:dungeon_loot/nether_artifact'}

#tick animation
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1