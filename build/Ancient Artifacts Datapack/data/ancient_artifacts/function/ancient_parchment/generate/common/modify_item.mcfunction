$item modify entity @s weapon.mainhand {"function":"set_components","components":{"minecraft:custom_data":{recipe:{count:$(count),artifact:"$(artifact)",relics:$(relics),compare:$(compare),dim:$(selected_dim)},parchment:1b}}}
$item modify entity @s weapon.mainhand {"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close","$(artifact)"]}}
