
##Store Selected Item in storage to make checks faster
data modify storage ancient_artifacts:parchment SelectedItem set from entity @s SelectedItem

##get data
execute store result score .relic_count temp run data get storage ancient_artifacts:parchment SelectedItem.components."minecraft:custom_data".recipe.count

#get artifact
function ancient_artifacts:ancient_parchment/get_char/artifact

#get relics
data modify storage ancient_artifacts:parchment current_relic set from storage ancient_artifacts:parchment SelectedItem.components."minecraft:custom_data".recipe.relics[0]
function ancient_artifacts:ancient_parchment/get_char/relic
data modify storage ancient_artifacts:parchment show.relic1 set from storage ancient_artifacts:parchment show.current_relic

data modify storage ancient_artifacts:parchment current_relic set from storage ancient_artifacts:parchment SelectedItem.components."minecraft:custom_data".recipe.relics[1]
function ancient_artifacts:ancient_parchment/get_char/relic
data modify storage ancient_artifacts:parchment show.relic2 set from storage ancient_artifacts:parchment show.current_relic

data modify storage ancient_artifacts:parchment current_relic set from storage ancient_artifacts:parchment SelectedItem.components."minecraft:custom_data".recipe.relics[2]
function ancient_artifacts:ancient_parchment/get_char/relic
data modify storage ancient_artifacts:parchment show.relic3 set from storage ancient_artifacts:parchment show.current_relic

##compare
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:"equal"}}}}} run summon marker ~ ~ ~ {CustomName:{"text":"\uF80B\uF80A\uF809\uF800\uE910"},Tags:[parchment,compare]}
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:"unequal"}}}}} run summon marker ~ ~ ~ {CustomName:{"text":"\uF80B\uF80A\uF809\uF800\uE911"},Tags:[parchment,compare]}
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:"rarity"}}}}} run summon marker ~ ~ ~ {CustomName:{"text":"\uF80B\uF80A\uF809\uF800\uE914"},Tags:[parchment,compare]}

##Summon Result + relic marker
function ancient_artifacts:ancient_parchment/show/chars

##space
#1 relic
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:1}}}}} run summon marker ~ ~ ~ {CustomName:{"text": "\uF809\uF803"},Tags:[parchment,space_1]}
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:1}}}}} run summon marker ~ ~ ~ {CustomName:{"text": "\uF805"},Tags:[parchment,space_2]}
#2 relics
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:2}}}}} run summon marker ~ ~ ~ {CustomName:{"text": "\uF809\uF808\uF808\uF800"},Tags:[parchment,space_1]}
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:2}}}}} run summon marker ~ ~ ~ {CustomName:{"text": "\uF807\uF808\uF802"},Tags:[parchment,space_2]}
#3 relics
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:3}}}}} run summon marker ~ ~ ~ {CustomName:{"text": "\uF80A\uF808\uF805"},Tags:[parchment,space_1]}
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:3}}}}} run summon marker ~ ~ ~ {CustomName:{"text": "\uF809\uF808\uF806"},Tags:[parchment,space_2]}



execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{dim:"overworld"}}}}} run title @s actionbar [{"text":"\uF80A\uF809\uE900","color":"#4e5c24"},{"selector":"@e[tag=parchment,tag=compare]"},{"text":"\uF809\uF808"},{"selector":"@e[tag=parchment,tag=artifact]","color":"#ffe7a6"},{"selector":"@e[tag=parchment,tag=space_1]"},{"selector":"@e[tag=parchment,tag=relic]","separator": "","color":"#ffe7a6"},{"selector":"@e[tag=parchment,tag=space_2]"}]
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{dim:"nether"}}}}} run title @s actionbar [{"text":"\uF80A\uF809\uE901","color":"#4e5c24"},{"selector":"@e[tag=parchment,tag=compare]"},{"text":"\uF809\uF808"},{"selector":"@e[tag=parchment,tag=artifact]","color":"#ffe7a6"},{"selector":"@e[tag=parchment,tag=space_1]"},{"selector":"@e[tag=parchment,tag=relic]","separator": "","color":"#ffe7a6"},{"selector":"@e[tag=parchment,tag=space_2]"}]
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{dim:"end"}}}}} run title @s actionbar [{"text":"\uF80A\uF809\uE902","color":"#4e5c24"},{"selector":"@e[tag=parchment,tag=compare]"},{"text":"\uF809\uF808"},{"selector":"@e[tag=parchment,tag=artifact]","color":"#ffe7a6"},{"selector":"@e[tag=parchment,tag=space_1]"},{"selector":"@e[tag=parchment,tag=relic]","separator": "","color":"#ffe7a6"},{"selector":"@e[tag=parchment,tag=space_2]"}]
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{dim:"deep_dark"}}}}} run title @s actionbar [{"text":"\uF80A\uF809\uE903","color":"#4e5c24"},{"selector":"@e[tag=parchment,tag=compare]"},{"text":"\uF809\uF808"},{"selector":"@e[tag=parchment,tag=artifact]","color":"#ffe7a6"},{"selector":"@e[tag=parchment,tag=space_1]"},{"selector":"@e[tag=parchment,tag=relic]","separator": "","color":"#ffe7a6"},{"selector":"@e[tag=parchment,tag=space_2]"}]

effect give @s slowness 1 2 true
kill @e[tag=parchment]