##Gen random properties
#rarity
execute store result storage ancient_artifacts:parchment rarity int 1 run random value 1..4
execute if data storage ancient_artifacts:parchment {rarity:1} run data modify storage ancient_artifacts:parchment rarity set value "common"
execute if data storage ancient_artifacts:parchment {rarity:2} run data modify storage ancient_artifacts:parchment rarity set value "uncommon"
execute if data storage ancient_artifacts:parchment {rarity:3} run data modify storage ancient_artifacts:parchment rarity set value "rare"
execute if data storage ancient_artifacts:parchment {rarity:4} run data modify storage ancient_artifacts:parchment rarity set value "unique"
execute if data storage ancient_artifacts:parchment {rarity:1} store result score .7 temp if data storage ancient_artifacts:relics all.list[{artifact:{level:"unique"}}]

#number of relics
execute store result storage ancient_artifacts:parchment count int 1 run random value 1..3
execute if score .7 temp matches 2 store result storage ancient_artifacts:parchment count int 1 run random value 1..2

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
function ancient_artifacts:ancient_parchment/generate/rand_rarity with storage ancient_artifacts:parchment


##Modify Item Data
data modify storage ancient_artifacts:parchment compare set value "rarity"
data modify storage ancient_artifacts:parchment artifact set from storage ancient_artifacts:parchment rarity
function ancient_artifacts:ancient_parchment/generate/modify_item with storage ancient_artifacts:parchment
item modify entity @s weapon.mainhand {"function":"set_custom_model_data",flags:{mode:"replace_section",offset:0,values:[false]}}