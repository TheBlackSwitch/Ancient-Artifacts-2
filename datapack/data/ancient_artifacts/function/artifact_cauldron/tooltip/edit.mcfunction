execute if entity @s[tag=sheared] run return fail
execute unless score @s current_recipe = @s prev_recipe at @s run playsound item.book.page_turn block @a ~ ~ ~ 1 0.8
execute unless score @s current_recipe = @s prev_recipe at @s run playsound block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1

execute unless score @s current_recipe = @s prev_recipe if score @s current_recipe matches 0..10 run scoreboard players set @s tooltip_size 1
execute unless score @s current_recipe = @s prev_recipe if score @s current_recipe matches 16..21 run scoreboard players set @s tooltip_size 2
execute unless score @s current_recipe = @s prev_recipe if score @s current_recipe matches 11..15 run scoreboard players set @s tooltip_size 3
execute unless score @s current_recipe = @s prev_recipe if score @s current_recipe matches 1 run scoreboard players set @s tooltip_size 2

execute unless score @s current_recipe = @s prev_recipe align xyz run function ancient_artifacts:artifact_cauldron/tooltip/edit_background

scoreboard players operation @s prev_recipe = @s current_recipe

execute if score @s current_recipe matches 0 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [ \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Next, insert water: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +3 ","color":"dark_purple","bold":false},{"text":"\uE840","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Water Bottle\n","color":"dark_purple","bold":false},  \
    {"text":"        "},{"text":"OR\n","color":"dark_green","bold":true,"underlined":true},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE841","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Water Bucket\n","color":"dark_purple","bold":false}  \
]

##tooltip for recipe type selection
execute if score @s current_recipe matches 1 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [  \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Next: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +2 ","color":"dark_purple","bold":false},{"text":"\uE842","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Artifact Blend\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Recycle Blend\n","color":"#600060","bold":false},  \
    {"text":"        "},{"text":"OR\n","color":"dark_green","bold":true,"underlined":true},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE843","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":"Common Artifact Template\n","color":"gray","bold":false},  \
    {"text":"    --> Cast A Common Artifact\n","color":"#600060","bold":false},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE844","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":"Uncommon Artifact Template\n","color":"blue","bold":false},  \
    {"text":"    --> Cast An Uncommon Artifact\n","color":"#600060","bold":false},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE845","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":"Rare Artifact Template\n","color":"light_purple","bold":false},  \
    {"text":"    --> Cast A Rare Artifact\n","color":"#600060","bold":false},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE846","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":"Unique Artifact Template\n","color":"gold","bold":false},  \
    {"text":"    --> Cast A Unique Artifact","color":"#600060","bold":false}  \
]

##artifact recycling (starts at 10)

##second artifact blend
execute if score @s current_recipe matches 10 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [  \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Current Recipe: \n","color":"dark_green","bold":false},{"text":"  Artifact Recycling\n\n","color":"dark_purple"},  \
    {"text":"Next: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE842","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Artifact Blend","color":"dark_purple","bold":false}  \
]

##3rd blend or essence

##Cycling tooltip
execute if score @s current_recipe matches 11..15 if score .40 slow_tick matches 0..10 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [  \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Current Recipe: \n","color":"dark_green","bold":false},{"text":"  Artifact Recycling\n\n","color":"dark_purple"},  \
    {"text":"Current chances: \n","color":"gold","bold":true},  \
    {"text":"  Generic Loot: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"lPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Common: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"cPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Uncommon: ","color":"blue"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"uPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Rare: ","color":"dark_purple"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"rPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Unique: ","color":"gold"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"qPercent"},"color":"dark_purple"},{"text":"%\n\n","color":"dark_purple"},  \
    {"text":"Next: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE842","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Artifact Blend\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Cast Artifact\n","color":"#600060","bold":false},  \
    {"text":"        "},{"text":"OR\n","color":"dark_green","bold":true,"underlined":true},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE847","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Any Essence\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Edit Chances ","color":"#600060","bold":false},{"score":{"name":"@e[tag=artifact_cauldron,tag=control,limit=1,sort=nearest]","objective":"essences"},"color":"#600060"},{"text":"/5 max\n","color":"#600060"}  \
]

execute if score @s current_recipe matches 11..15 if score .40 slow_tick matches 11..20 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [  \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Current Recipe: \n","color":"dark_green","bold":false},{"text":"  Artifact Recycling\n\n","color":"dark_purple"},  \
    {"text":"Current chances: \n","color":"gold","bold":true},  \
    {"text":"  Generic Loot: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"lPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Common: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"cPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Uncommon: ","color":"blue"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"uPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Rare: ","color":"dark_purple"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"rPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Unique: ","color":"gold"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"qPercent"},"color":"dark_purple"},{"text":"%\n\n","color":"dark_purple"},  \
    {"text":"Next: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE842","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Artifact Blend\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Cast Artifact\n","color":"#600060","bold":false},  \
    {"text":"        "},{"text":"OR\n","color":"dark_green","bold":true,"underlined":true},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE848","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Any Essence\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Edit Chances ","color":"#600060","bold":false},{"score":{"name":"@e[tag=artifact_cauldron,tag=control,limit=1,sort=nearest]","objective":"essences"},"color":"#600060"},{"text":"/5 max\n","color":"#600060"}  \
]

execute if score @s current_recipe matches 11..15 if score .40 slow_tick matches 21..30 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [  \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Current Recipe: \n","color":"dark_green","bold":false},{"text":"  Artifact Recycling\n\n","color":"dark_purple"},  \
    {"text":"Current chances: \n","color":"gold","bold":true},  \
    {"text":"  Generic Loot: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"lPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Common: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"cPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Uncommon: ","color":"blue"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"uPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Rare: ","color":"dark_purple"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"rPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Unique: ","color":"gold"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"qPercent"},"color":"dark_purple"},{"text":"%\n\n","color":"dark_purple"},  \
    {"text":"Next: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE842","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Artifact Blend\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Cast Artifact\n","color":"#600060","bold":false},  \
    {"text":"        "},{"text":"OR\n","color":"dark_green","bold":true,"underlined":true},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE849","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Any Essence\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Edit Chances ","color":"#600060","bold":false},{"score":{"name":"@e[tag=artifact_cauldron,tag=control,limit=1,sort=nearest]","objective":"essences"},"color":"#600060"},{"text":"/5 max\n","color":"#600060"}  \
]

execute if score @s current_recipe matches 11..15 if score .40 slow_tick matches 31..40 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [  \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Current Recipe: \n","color":"dark_green","bold":false},{"text":"  Artifact Recycling\n\n","color":"dark_purple"},  \
    {"text":"Current chances: \n","color":"gold","bold":true},  \
    {"text":"  Generic Loot: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"lPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Common: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"cPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Uncommon: ","color":"blue"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"uPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Rare: ","color":"dark_purple"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"rPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Unique: ","color":"gold"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"qPercent"},"color":"dark_purple"},{"text":"%\n\n","color":"dark_purple"},  \
    {"text":"Next: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE842","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Artifact Blend\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Cast Artifact\n","color":"#600060","bold":false},  \
    {"text":"        "},{"text":"OR\n","color":"dark_green","bold":true,"underlined":true},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE850","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Any Essence\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Edit Chances ","color":"#600060","bold":false},{"score":{"name":"@e[tag=artifact_cauldron,tag=control,limit=1,sort=nearest]","objective":"essences"},"color":"#600060"},{"text":"/5 max\n","color":"#600060"}  \
]

##Force third artifact blend if 5 essences added
execute if score @s current_recipe matches 16 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [  \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Current Recipe: \n","color":"dark_green","bold":false},{"text":"  Artifact Recycling\n\n","color":"dark_purple"},  \
    {"text":"Current chances: \n","color":"gold","bold":true},  \
    {"text":"  Generic Loot: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"lPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Common: ","color":"gray"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"cPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Uncommon: ","color":"blue"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"uPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Rare: ","color":"dark_purple"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"rPercent"},"color":"dark_purple"},{"text":"%\n","color":"dark_purple"},  \
    {"text":"  Unique: ","color":"gold"},{"score":{"name":"@n[type=marker,distance=..1,tag=artifact_cauldron,tag=control]","objective":"qPercent"},"color":"dark_purple"},{"text":"%\n\n","color":"dark_purple"},  \
    {"text":"Next: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE842","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Artifact Blend\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Cast Artifact","color":"#600060","bold":false}  \
]

##Artifact Crafting (starts at 20)

##Origin selection
execute if score @s current_recipe matches 20 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [  \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Current Recipe: \n","color":"dark_green","bold":false},{"text":"  Artifact Casting\n","color":"dark_purple"},  \
    {"text":"Level: \n","color":"dark_green","bold":false},{"nbt":"data.craft.level","entity":"@s","color":"dark_purple"},  \
    {"text":"Next: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE851","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Amethyst Shard\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Overworld Artifact\n","color":"#600060","bold":false},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE852","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Quartz Compound\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Nether Artifact\n","color":"#600060","bold":false},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE853","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Chorus Compound\n","color":"dark_purple","bold":false},  \
    {"text":"    --> End Artifact\n","color":"#600060","bold":false},  \
    {"text":"  +1 ","color":"dark_purple","bold":false},{"text":"\uE854","color":"white","bold":false,"font":"ancient_artifacts:main"},{"text":" Echoing Compound\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Deep Dark Artifact\n","color":"#600060","bold":false}  \
]

##Relic

execute if score @s current_recipe matches 21..22 align xyz run data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=text] text set value [  \
    {"text":"Artifact Cauldron\n","color":"gold","bold":true},  \
    {"text":"Ancient Artifacts\n\n\n","color":"blue","font":"tooltip_namespace","bold":false},  \
    {"text":"Current Recipe: \n","color":"dark_green","bold":false},{"text":"  Artifact Casting\n","color":"dark_purple"},  \
    {"text":"Level: \n  ","color":"dark_green","bold":false},{"nbt":"data.craft.level","entity":"@e[tag=artifact_cauldron,tag=control,limit=1,sort=nearest]","color":"dark_purple"},{"text":"\n"},  \
    {"text":"Origin: \n  ","color":"dark_green","bold":false},{"nbt":"data.craft.origin","entity":"@e[tag=artifact_cauldron,tag=control,limit=1,sort=nearest]","color":"dark_purple"},{"text":"\n\n"},  \
    {"text":"Next: \n\n","color":"dark_green","bold":false,"font":"tooltip_namespace"},  \
    {"text":"+1 ","color":"dark_purple","bold":false},{"selector":"@e[tag=artifact_cauldron,tag=control,limit=1,sort=nearest]","bold":false},{"text":" Specifc Relic\n","color":"dark_purple","bold":false},  \
    {"text":"    --> Cast Certain Artifact\n","color":"#600060","bold":false,"font":"tooltip_namespace"}  \
]