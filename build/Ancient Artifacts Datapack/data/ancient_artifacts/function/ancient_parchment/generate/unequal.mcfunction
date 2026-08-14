execute store result storage ancient_artifacts:parchment count int 1 run random value 2..4
execute if data storage ancient_artifacts:parchment {count: 1} if predicate theblackswitch:v2.0/patch-4/rand/25 store result storage ancient_artifacts:parchment count int 1 run random value 2..3
data modify storage ancient_artifacts:parchment correct set from storage ancient_artifacts:parchment count
scoreboard players set #loop_count temp 0
function ancient_artifacts:ancient_parchment/generate/common/gen_dim
function ancient_artifacts:ancient_parchment/generate/common/rand_max
scoreboard players set #loop_count temp 0
data remove storage ancient_artifacts:parchment relics
data modify storage ancient_artifacts:parchment current set from storage ancient_artifacts:parchment count
function ancient_artifacts:ancient_parchment/generate/equal/random_relic with storage ancient_artifacts:parchment
execute if score #success temp matches 0 store result storage ancient_artifacts:parchment count int 1 if data storage ancient_artifacts:parchment relics[]
execute store result score .6 temp run data get storage ancient_artifacts:parchment count
execute store result storage ancient_artifacts:parchment count int 1 run scoreboard players remove .6 temp 1
data remove storage ancient_artifacts:parchment relics[0]
data modify storage ancient_artifacts:parchment compare set value "unequal"
data modify storage ancient_artifacts:parchment artifact set from storage ancient_artifacts:parchment artifact.id
function ancient_artifacts:ancient_parchment/generate/common/modify_item with storage ancient_artifacts:parchment
item modify entity @s weapon.mainhand {function: "set_custom_model_data", flags: {mode: "replace_section", offset: 0, values: [true]}}
