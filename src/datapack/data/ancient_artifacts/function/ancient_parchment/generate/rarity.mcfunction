# Gen random properties
# rarity
#tellraw @a [{"text":"======== TYPE: RARITY ======== "}]

execute store result storage ancient_artifacts:parchment rarity int 1 run random value 1..4
execute if data storage ancient_artifacts:parchment {rarity:1} run data modify storage ancient_artifacts:parchment rarity set value "common"
execute if data storage ancient_artifacts:parchment {rarity:2} run data modify storage ancient_artifacts:parchment rarity set value "uncommon"
execute if data storage ancient_artifacts:parchment {rarity:3} run data modify storage ancient_artifacts:parchment rarity set value "rare"
execute if data storage ancient_artifacts:parchment {rarity:4} run data modify storage ancient_artifacts:parchment rarity set value "unique"

#tellraw @a [{"text":"Rarity: "},{"nbt":"rarity","storage":"ancient_artifacts:parchment"}]

# number of relics
execute store result storage ancient_artifacts:parchment count int 1 run random value 1..3

#tellraw @a [{"text":"Count: "},{"nbt":"count","storage":"ancient_artifacts:parchment"}]

# Generate a random dimension
scoreboard players set #loop_count temp 0
function ancient_artifacts:ancient_parchment/generate/common/gen_dim

#tellraw @a [{"text":"Selected dim: "},{"nbt":"selected_dim","storage":"ancient_artifacts:parchment"}]

# Get the max random value to include all relics of the selected dimension
function ancient_artifacts:ancient_parchment/generate/common/rand_max
#tellraw @a [{"text":"Rand max: "},{"nbt":"rand_max","storage":"ancient_artifacts:parchment"}]

# Generate a random relic

scoreboard players set #loop_count temp 0

data remove storage ancient_artifacts:parchment relics
data modify storage ancient_artifacts:parchment current set from storage ancient_artifacts:parchment count

execute store success score #success temp run function ancient_artifacts:ancient_parchment/generate/rarity/random_relic with storage ancient_artifacts:parchment

# We failed to generate enough relics so adjust the count
execute if score #success temp matches 0 store result storage ancient_artifacts:parchment count int 1 if data storage ancient_artifacts:parchment relics[]

#tellraw @a [{"text":"Relics: "},{"nbt":"relics","storage":"ancient_artifacts:parchment"}]

# Modify Item Data
data modify storage ancient_artifacts:parchment compare set value "rarity"
data modify storage ancient_artifacts:parchment artifact set from storage ancient_artifacts:parchment rarity
function ancient_artifacts:ancient_parchment/generate/common/modify_item with storage ancient_artifacts:parchment
item modify entity @s weapon.mainhand {"function":"set_custom_model_data",flags:{mode:"replace_section",offset:0,values:[false]}}