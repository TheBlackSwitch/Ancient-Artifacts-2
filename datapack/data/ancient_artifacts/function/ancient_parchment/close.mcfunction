playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 1.2
playsound minecraft:item.book.put player @a
title @s actionbar {"text": ""}
execute if score @s parchment_slot matches 0 run item modify entity @s hotbar.0 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{"function":"set_custom_data",tag:{open:1b}}]
execute if score @s parchment_slot matches 1 run item modify entity @s hotbar.1 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{"function":"set_custom_data",tag:{open:1b}}]
execute if score @s parchment_slot matches 2 run item modify entity @s hotbar.2 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{"function":"set_custom_data",tag:{open:1b}}]
execute if score @s parchment_slot matches 3 run item modify entity @s hotbar.3 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{"function":"set_custom_data",tag:{open:1b}}]
execute if score @s parchment_slot matches 4 run item modify entity @s hotbar.4 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{"function":"set_custom_data",tag:{open:1b}}]
execute if score @s parchment_slot matches 5 run item modify entity @s hotbar.5 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{"function":"set_custom_data",tag:{open:1b}}]
execute if score @s parchment_slot matches 6 run item modify entity @s hotbar.6 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{"function":"set_custom_data",tag:{open:1b}}]
execute if score @s parchment_slot matches 7 run item modify entity @s hotbar.7 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{"function":"set_custom_data",tag:{open:1b}}]
execute if score @s parchment_slot matches 8 run item modify entity @s hotbar.8 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{"function":"set_custom_data",tag:{open:1b}}]
effect clear @s slowness
scoreboard players set @s parchment_open 0
function theblackswitch:overlay/set_overlay {overlay:"none",do_sound:false}


execute if predicate ancient_artifacts:holding_artifact run function ancient_artifacts:artifact_hotbar/show
execute if score @s always_show_hotbar matches 1 run function ancient_artifacts:artifact_hotbar/show