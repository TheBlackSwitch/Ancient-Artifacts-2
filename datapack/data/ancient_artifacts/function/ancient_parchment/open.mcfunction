item modify entity @s weapon.mainhand [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["open"]},flags:{mode:"replace_section",offset:1,values:[true]}},{"function":"set_custom_data",tag:{open:1b}}]

playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 0.8
playsound minecraft:item.book.put player @a
particle minecraft:dust{color:[0.8, 0.8, 0.5],scale:1} ^ ^1.3 ^1 0.5 0.5 0.5 1 15 force @s
execute store result score @s parchment_slot run data get entity @s SelectedItemSlot
scoreboard players set @s parchment_open -1
function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/darken",do_sound:false}
