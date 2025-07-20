execute if entity @s[tag=artifact_cauldron_place] unless block ~ ~ ~ air run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:block/artifact_cauldron
execute if entity @s[tag=artifact_cauldron_place] unless block ~ ~ ~ air run kill @s
execute if entity @s[tag=artifact_cauldron_place] unless block ~ ~ ~ air run return fail

execute unless block ~ ~ ~ #cauldrons run setblock ~ ~ ~ cauldron

summon marker ~0.5 ~0.5 ~0.5 {Tags:[artifact_cauldron,control]}
summon item_display ~0.5 ~0.5 ~0.5 {Tags:[artifact_cauldron,display],item:{id:"minecraft:gold_nugget",components:{"minecraft:item_model":"ancient_artifacts:block/artifact_cauldron"}},item_display:"head"}
summon minecraft:text_display ~0.5 ~0.2 ~0.5 {Rotation:[0f,-90f],Tags:["artifact_cauldron","fluid"],background:0,teleport_duration:3,text:{"text":"\uE801","color":"blue","font":"ancient_artifacts:main"},alignment:"center"}

##Tooltip background
summon text_display ~0.5 ~0.5 ~0.5 {billboard:"vertical",background:0,teleport_duration:3,Tags:["artifact_cauldron","tooltip","background"],line_width:200000,alignment:"left",view_range:0.06f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,-0.5f],scale:[1f,1f,1f]},Rotation:[0f, -22f],text:[ \
    {"translate":"tooltip.bg.SPACE","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TL","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TR","font":"ancient_artifacts:main"}, \
    {"translate":"tooltip.bg.ML","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MR","font":"ancient_artifacts:main"}, \
    {"translate":"tooltip.bg.BL","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BR","font":"ancient_artifacts:main"} \
]}

##Tooltip Text
summon text_display ~0.5 ~0.5 ~0.5 {billboard:"vertical",background:0,teleport_duration:3,Tags:["artifact_cauldron","tooltip","text"],line_width:200000,alignment:"left",view_range:0.06f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.005f,1.1f,-0.49f],scale:[0.5f,0.5f,0.5f]},Rotation:[0f, -22f],text:[ \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Next, insert water: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +3 ","color":"dark_purple","bold":false},{"text":"\uE840","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Water Bottle\n","color":"dark_purple","bold":false},  \
    {"text":"        "},{"text":"OR\n","color":"dark_green","bold":true,"underlined":true},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE841","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Water Bucket\n","color":"dark_purple","bold":false}  \
]}

execute positioned ~0.5 ~0.2 ~0.5 run scoreboard players set @n[type=text_display,tag=artifact_cauldron,tag=fluid] rPrev 0
execute positioned ~0.5 ~0.2 ~0.5 run scoreboard players set @n[type=text_display,tag=artifact_cauldron,tag=fluid] gPrev 0
execute positioned ~0.5 ~0.2 ~0.5 run scoreboard players set @n[type=text_display,tag=artifact_cauldron,tag=fluid] bPrev 0

playsound block.netherite_block.place block @a ~0.5 ~0.5 ~0.5 1 1
playsound block.copper_bulb.place block @a ~0.5 ~0.5 ~0.5 1 1
playsound block.amethyst_block.place block @a ~0.5 ~0.5 ~0.5 1 1

execute if entity @s[tag=artifact_cauldron_place] run kill @s