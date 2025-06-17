$execute align xyz if entity @e[type=block_display,tag=glowing_ore,dy=0] run return run setblock ~ ~ ~ $(block)
$data modify storage ancient_artifacts:temp allow_color set value $(allow_color)
$execute if data storage ancient_artifacts:temp {allow_color:1} align xyz run summon block_display ~0.0005 ~0.0005 ~0.0005 {Glowing:1b,glow_color_override:$(color),transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.999f,0.999f,0.999f]},block_state:{Name:"$(block)"},Tags:["glowing_ore","INIT"]}
$execute if data storage ancient_artifacts:temp {allow_color:0} align xyz run summon block_display ~0.0005 ~0.0005 ~0.0005 {Glowing:1b,glow_color_override:16777215,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.999f,0.999f,0.999f]},block_state:{Name:"$(block)"},Tags:["glowing_ore","INIT"]}

tag @e[type=block_display,tag=glowing_ore,tag=INIT] remove INIT
$setblock ~ ~ ~ $(block)