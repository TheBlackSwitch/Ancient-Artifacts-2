execute align xyz if entity @e[type=block_display,tag=glowing_ore,dy=0] run return fail

$execute if score #allow_color temp matches 1 align xyz run summon block_display ~0.0005 ~0.0005 ~0.0005 {Glowing:1b,glow_color_override:$(color),transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.999f,0.999f,0.999f]},block_state:{Name:"$(block)"},Tags:[glowing_ore, INIT, smithed.entity, smithed.strict]}
$execute if score #allow_color temp matches 0 align xyz run summon block_display ~0.0005 ~0.0005 ~0.0005 {Glowing:1b,glow_color_override:16777215,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.999f,0.999f,0.999f]},block_state:{Name:"$(block)"},Tags:[glowing_ore, INIT, smithed.entity, smithed.strict]}

tag @e[type=block_display,tag=glowing_ore,tag=INIT] remove INIT