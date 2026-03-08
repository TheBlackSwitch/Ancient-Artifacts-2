# Generate an unequal type parchment with wrong relics
# this is done by first selecting a correct relic and then generating 1-3 extra relics. Lastly remove the correct relic from the list
#tellraw @a [{"text":"======== TYPE: UNEQUAL ======== "}]

#number of relics
execute store result storage ancient_artifacts:parchment count int 1 run random value 2..4
execute if data storage ancient_artifacts:parchment {count:1} if predicate theblackswitch:__version__/__patch__/rand/25 store result storage ancient_artifacts:parchment count int 1 run random value 2..3

data modify storage ancient_artifacts:parchment correct set from storage ancient_artifacts:parchment count

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

# ===== Modify item =====

# remove 1 from the count (since we've generated 1 more relic than we needed)
execute store result score .6 temp run data get storage ancient_artifacts:parchment count
execute store result storage ancient_artifacts:parchment count int 1 run scoreboard players remove .6 temp 1

# remove the correct relic from the list. (gets created in reverse order)
data remove storage ancient_artifacts:parchment relics[0] 

# set the type and resulting artifact
data modify storage ancient_artifacts:parchment compare set value "unequal"
data modify storage ancient_artifacts:parchment artifact set from storage ancient_artifacts:parchment artifact.id

# finally modify the item
function ancient_artifacts:ancient_parchment/generate/common/modify_item with storage ancient_artifacts:parchment
item modify entity @s weapon.mainhand {"function":"set_custom_model_data",flags:{mode:"replace_section",offset:0,values:[true]}}