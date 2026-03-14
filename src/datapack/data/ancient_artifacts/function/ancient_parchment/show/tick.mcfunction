
#-------------------------------------------------------
## Get parchment item data
#-------------------------------------------------------

# Store selected item data in storage to make checks faster
data modify storage ancient_artifacts:parchment SelectedItem set from entity @s SelectedItem

# get relic count
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


#-------------------------------------------------------
## Build the right parchment type
#-------------------------------------------------------

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:"equal"}}}}}:
    data modify storage ancient_artifacts:parchment display.compare set value {"text":"\uF80B\uF80A\uF809\uF800\uE910","font":"ancient_artifacts:main"}

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:"unequal"}}}}}:
    data modify storage ancient_artifacts:parchment display.compare set value {"text":"\uF80B\uF80A\uF809\uF800\uE911","font":"ancient_artifacts:main"}

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:"rarity"}}}}}:
    data modify storage ancient_artifacts:parchment display.compare set value {"text":"\uF80B\uF80A\uF809\uF800\uE914","font":"ancient_artifacts:main"}

#-------------------------------------------------------
## Build the ingredient / result items
#-------------------------------------------------------

function ancient_artifacts:ancient_parchment/show/chars

#-------------------------------------------------------
## Handle correct negative spacing
#-------------------------------------------------------

#1 relic
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:1}}}}}:
    data modify storage ancient_artifacts:parchment display.space_1 set value {"text": "\uF809\uF803","font":"ancient_artifacts:main"}

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:1}}}}}:
    data modify storage ancient_artifacts:parchment display.space_2 set value {"text": "\uF805","font":"ancient_artifacts:main"}

#2 relics
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:2}}}}}:
    data modify storage ancient_artifacts:parchment display.space_1 set value {"text": "\uF809\uF808\uF808\uF800","font":"ancient_artifacts:main"}

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:2}}}}}:
    data modify storage ancient_artifacts:parchment display.space_2 set value {"text": "\uF807\uF808\uF802","font":"ancient_artifacts:main"}

#3 relics
execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:3}}}}}:
    data modify storage ancient_artifacts:parchment display.space_1 set value {"text": "\uF80A\uF808\uF805","font":"ancient_artifacts:main"}

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{count:3}}}}}:
    data modify storage ancient_artifacts:parchment display.space_2 set value {"text": "\uF809\uF808\uF806","font":"ancient_artifacts:main"}

#-------------------------------------------------------
## Build the beckground (dimension dependant)
#-------------------------------------------------------

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{dim:"overworld"}}}}}:
    data modify storage ancient_artifacts:parchment display.background set value {"text":"\uF80A\uF809\uE900","shadow_color":0,"font":"ancient_artifacts:main"}

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{dim:"nether"}}}}}:
    data modify storage ancient_artifacts:parchment display.background set value {"text":"\uF80A\uF809\uE901","shadow_color":0,"font":"ancient_artifacts:main"}

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{dim:"end"}}}}}:
    data modify storage ancient_artifacts:parchment display.background set value {"text":"\uF80A\uF809\uE902","shadow_color":0,"font":"ancient_artifacts:main"}

execute if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{dim:"deep_dark"}}}}}:
    data modify storage ancient_artifacts:parchment display.background set value {"text":"\uF80A\uF809\uE903","shadow_color":0,"font":"ancient_artifacts:main"}

#-------------------------------------------------------
## Build the final message
#-------------------------------------------------------

data modify storage smithed.actionbar:input message set value \
{ \
    json:[ \
        {"nbt":"display.background","storage":"ancient_artifacts:parchment","shadow_color":0,"interpret":true}, \
        {"nbt":"display.compare","storage":"ancient_artifacts:parchment","shadow_color":0,"interpret":true}, \
        {"text":"\uF809\uF808","font":"ancient_artifacts:main"}, \
        {"nbt":"display.artifact","storage":"ancient_artifacts:parchment","shadow_color":0,"interpret":true}, \
        {"nbt":"display.space_1","storage":"ancient_artifacts:parchment","shadow_color":0,"interpret":true}, \
        {"nbt":"display.relic_1","storage":"ancient_artifacts:parchment","shadow_color":0,"interpret":true}, \
        {"nbt":"display.relic_2","storage":"ancient_artifacts:parchment","shadow_color":0,"interpret":true}, \
        {"nbt":"display.relic_3","storage":"ancient_artifacts:parchment","shadow_color":0,"interpret":true}, \
        {"nbt":"display.space_2","storage":"ancient_artifacts:parchment","shadow_color":0,"interpret":true} \
    ], \
    priority:"override", \
    freeze: 2 \
}


#-------------------------------------------------------
## Finally display the message
#-------------------------------------------------------

# Display the text with the actionbar library
function #smithed.actionbar:message

# Give slowness
effect give @s slowness 1 2 true