execute store result storage ancient_artifacts:parchment rarity int 1 run random value 1..4
execute if data storage ancient_artifacts:parchment {rarity: 1} run data modify storage ancient_artifacts:parchment rarity set value "common"
execute if data storage ancient_artifacts:parchment {rarity: 2} run data modify storage ancient_artifacts:parchment rarity set value "uncommon"
execute if data storage ancient_artifacts:parchment {rarity: 3} run data modify storage ancient_artifacts:parchment rarity set value "rare"
execute if data storage ancient_artifacts:parchment {rarity: 4} run data modify storage ancient_artifacts:parchment rarity set value "unique"
execute store result storage ancient_artifacts:parchment count int 1 run random value 1..3
scoreboard players set #loop_count temp 0
function ancient_artifacts:ancient_parchment/generate/common/gen_dim
function ancient_artifacts:ancient_parchment/generate/common/rand_max
scoreboard players set #loop_count temp 0
data remove storage ancient_artifacts:parchment relics
data modify storage ancient_artifacts:parchment current set from storage ancient_artifacts:parchment count
execute store success score #success temp run function ancient_artifacts:ancient_parchment/generate/rarity/random_relic with storage ancient_artifacts:parchment
execute if score #success temp matches 0 store result storage ancient_artifacts:parchment count int 1 if data storage ancient_artifacts:parchment relics[]
data modify storage ancient_artifacts:parchment compare set value "rarity"
data modify storage ancient_artifacts:parchment artifact set from storage ancient_artifacts:parchment rarity
function ancient_artifacts:ancient_parchment/generate/common/modify_item with storage ancient_artifacts:parchment
item modify entity @s weapon.mainhand {function: "set_custom_model_data", flags: {mode: "replace_section", offset: 0, values: [false]}}
