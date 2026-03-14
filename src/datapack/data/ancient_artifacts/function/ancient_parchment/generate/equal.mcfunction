# Gen random properties
#tellraw @a [{"text":"======== TYPE: EQUAL ======== "}]

#number of relics
execute store result storage ancient_artifacts:parchment count int 1 run random value 1..3
execute if data storage ancient_artifacts:parchment {count:1} if predicate theblackswitch:__version__/__patch__/rand/25 store result storage ancient_artifacts:parchment count int 1 run random value 2..3

#tellraw @a [{"text":"Count: "},{"nbt":"count","storage":"ancient_artifacts:parchment"}]

# The correct one
execute if data storage ancient_artifacts:parchment {count:1} run data modify storage ancient_artifacts:parchment correct set value 1
execute if data storage ancient_artifacts:parchment {count:2} store result storage ancient_artifacts:parchment correct int 1 run random value 1..2
execute if data storage ancient_artifacts:parchment {count:3} store result storage ancient_artifacts:parchment correct int 1 run random value 1..3

#tellraw @a [{"text":"Correct: "},{"nbt":"correct","storage":"ancient_artifacts:parchment"}]

# Gen dim
scoreboard players set #loop_count temp 0
function ancient_artifacts:ancient_parchment/generate/common/gen_dim

#tellraw @a [{"text":"Selected dim: "},{"nbt":"selected_dim","storage":"ancient_artifacts:parchment"}]

# rand max
function ancient_artifacts:ancient_parchment/generate/common/rand_max

#tellraw @a [{"text":"Rand max: "},{"nbt":"rand_max","storage":"ancient_artifacts:parchment"}]

# Gen random relics
scoreboard players set #loop_count temp 0

data remove storage ancient_artifacts:parchment relics
data modify storage ancient_artifacts:parchment current set from storage ancient_artifacts:parchment count

function ancient_artifacts:ancient_parchment/generate/equal/random_relic with storage ancient_artifacts:parchment

# We failed to generate enough relics so adjust the count
execute if score #success temp matches 0 store result storage ancient_artifacts:parchment count int 1 if data storage ancient_artifacts:parchment relics[]


#tellraw @a [{"text":"Relics: "},{"nbt":"relics","storage":"ancient_artifacts:parchment"}]

# Modify Item Data
data modify storage ancient_artifacts:parchment compare set value "equal"
data modify storage ancient_artifacts:parchment artifact set from storage ancient_artifacts:parchment artifact.id
function ancient_artifacts:ancient_parchment/generate/common/modify_item with storage ancient_artifacts:parchment
item modify entity @s weapon.mainhand {"function":"set_custom_model_data",flags:{mode:"replace_section",offset:0,values:[false]}}


