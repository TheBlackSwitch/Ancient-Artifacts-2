
##Do Not Show Hotbar
execute if score @s parchment_open matches 1 run return fail
execute if entity @s[tag=tinkering_tiara,scores={sneak=1..}] run return fail

##Artifact Bar Icon
execute if score @s[tag=!focused] artifact_slot_count matches 2 run summon marker ~ ~ ~ {CustomName:{"text":"\uE500\uF801\uF803  ","font":"ancient_artifacts:main"},Tags:[artifact_hotbar,order_1]}
execute if score @s[tag=!focused] artifact_slot_count matches 3 run summon marker ~ ~ ~ {CustomName:{"text":"\uE501\uF801","font":"ancient_artifacts:main"},Tags:[artifact_hotbar,order_1]}

execute if score @s[tag=focused] artifact_slot_count matches 2 run summon marker ~ ~ ~ {CustomName:{"text":"\uE514\uF801\uF803  ","font":"ancient_artifacts:main"},Tags:[artifact_hotbar,order_1]}
execute if score @s[tag=focused] artifact_slot_count matches 3 run summon marker ~ ~ ~ {CustomName:{"text":"\uE515\uF801","font":"ancient_artifacts:main"},Tags:[artifact_hotbar,order_1]}



##Artifact Slot 1
summon marker ~ ~ ~ {CustomName:{"text":"\uE700  ","font":"ancient_artifacts:main"},Tags:[artifact_hotbar,order_2,ah_INIT]}
scoreboard players operation .slot_1_idx temp = @s artifact_slot_1
execute store result storage ancient_artifacts:artifact_hotbar idx int 1 run scoreboard players add .slot_1_idx temp 600
function ancient_artifacts:artifact_hotbar/show_artifact with storage ancient_artifacts:artifact_hotbar

tag @e[type=marker,tag=artifact_hotbar] remove ah_INIT

##Space Between Artifacts
execute if score @s artifact_slot_count matches 2 run summon marker ~ ~ ~ {CustomName:{"text":"   "},Tags:[artifact_hotbar,order_3]}
execute if score @s artifact_slot_count matches 3 run summon marker ~ ~ ~ {CustomName:{"text":""},Tags:[artifact_hotbar,order_3]}

##Artifact Slot 2
summon marker ~ ~ ~ {CustomName:{"text":"\uE700  ","font":"ancient_artifacts:main"},Tags:[artifact_hotbar,order_4,ah_INIT]}
scoreboard players operation .slot_2_idx temp = @s artifact_slot_2
execute store result storage ancient_artifacts:artifact_hotbar idx int 1 run scoreboard players add .slot_2_idx temp 600
function ancient_artifacts:artifact_hotbar/show_artifact with storage ancient_artifacts:artifact_hotbar

tag @e[type=marker,tag=artifact_hotbar] remove ah_INIT

##Artifact Slot 3
execute if score @s artifact_slot_count matches 2 run summon marker ~ ~ ~ {CustomName:{"text":""},Tags:[artifact_hotbar,order_5]}
execute if score @s artifact_slot_count matches 3 run summon marker ~ ~ ~ {CustomName:{"text":"\uE700  ","font":"ancient_artifacts:main"},Tags:[artifact_hotbar,order_5,ah_INIT]}
execute if score @s artifact_slot_count matches 3 run scoreboard players operation .slot_3_idx temp = @s artifact_slot_3
execute if score @s artifact_slot_count matches 3 store result storage ancient_artifacts:artifact_hotbar idx int 1 run scoreboard players add .slot_3_idx temp 600
execute if score @s artifact_slot_count matches 3 run function ancient_artifacts:artifact_hotbar/show_artifact with storage ancient_artifacts:artifact_hotbar

execute if score @s artifact_slot_count matches 3 run tag @e[type=marker,tag=artifact_hotbar] remove ah_INIT

##End Spacing
execute if score @s artifact_slot_count matches 2 run summon marker ~ ~ ~ {CustomName:{"text":"   \uF802","font":"ancient_artifacts:main"},Tags:[artifact_hotbar,order_6]}
execute if score @s artifact_slot_count matches 3 run summon marker ~ ~ ~ {CustomName:{"text":" \uF802","font":"ancient_artifacts:main"},Tags:[artifact_hotbar,order_6]}

##combine parts
title @s actionbar [{"type":"selector","selector":"@e[type=marker,tag=artifact_hotbar,tag=order_1,distance=..1]","shadow_color":0},{"type":"selector","selector":"@e[type=marker,tag=artifact_hotbar,tag=order_2,distance=..1]"}   ,{"type":"selector","selector":"@e[type=marker,tag=artifact_hotbar,tag=order_3,distance=..1]"}    ,{"type":"selector","selector":"@e[type=marker,tag=artifact_hotbar,tag=order_4,distance=..1]"}    ,{"type":"selector","selector":"@e[type=marker,tag=artifact_hotbar,tag=order_5,distance=..1]"} ,{"type":"selector","selector":"@e[type=marker,tag=artifact_hotbar,tag=order_6,distance=..1]"}]
kill @e[type=marker,tag=artifact_hotbar]
