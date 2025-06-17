##Gen random properties
#number of relics
execute store result storage ancient_artifacts:parchment count int 1 run random value 2..4
execute if data storage ancient_artifacts:parchment {count:1} if predicate ancient_artifacts:random/25 store result storage ancient_artifacts:parchment count int 1 run random value 2..3

data modify storage ancient_artifacts:parchment correct set from storage ancient_artifacts:parchment count

##Gen dim
function ancient_artifacts:ancient_parchment/generate/gen_dim

#rand max
execute if data storage ancient_artifacts:parchment {selected_dim:"overworld"} store result storage ancient_artifacts:parchment rand_max int 1 if data storage ancient_artifacts:relics overworld.list[]
execute if data storage ancient_artifacts:parchment {selected_dim:"nether"} store result storage ancient_artifacts:parchment rand_max int 1 if data storage ancient_artifacts:relics nether.list[]
execute if data storage ancient_artifacts:parchment {selected_dim:"end"} store result storage ancient_artifacts:parchment rand_max int 1 if data storage ancient_artifacts:relics end.list[]
execute if data storage ancient_artifacts:parchment {selected_dim:"deep_dark"} store result storage ancient_artifacts:parchment rand_max int 1 if data storage ancient_artifacts:relics deep_dark.list[]

##Gen random nbrs
data remove storage ancient_artifacts:parchment relics
data modify storage ancient_artifacts:parchment current set from storage ancient_artifacts:parchment count
function ancient_artifacts:ancient_parchment/generate/rand with storage ancient_artifacts:parchment

##Modify Item Data
execute store result score .6 temp run data get storage ancient_artifacts:parchment count
execute store result storage ancient_artifacts:parchment count int 1 run scoreboard players remove .6 temp 1
data modify storage ancient_artifacts:parchment compare set value "unequal"
data modify storage ancient_artifacts:parchment artifact set from storage ancient_artifacts:parchment artifact.id
data remove storage ancient_artifacts:parchment relics[0]
function ancient_artifacts:ancient_parchment/generate/modify_item with storage ancient_artifacts:parchment
item modify entity @s weapon.mainhand {"function":"set_custom_model_data",flags:{mode:"replace_section",offset:0,values:[true]}}