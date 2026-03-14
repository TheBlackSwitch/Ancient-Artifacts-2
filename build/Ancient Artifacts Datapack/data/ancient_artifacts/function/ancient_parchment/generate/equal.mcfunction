execute store result storage ancient_artifacts:parchment count int 1 run random value 1..3
execute if data storage ancient_artifacts:parchment {count: 1} if predicate theblackswitch:v2.0/patch-1/rand/25 store result storage ancient_artifacts:parchment count int 1 run random value 2..3
execute if data storage ancient_artifacts:parchment {count: 1} run data modify storage ancient_artifacts:parchment correct set value 1
execute if data storage ancient_artifacts:parchment {count: 2} store result storage ancient_artifacts:parchment correct int 1 run random value 1..2
execute if data storage ancient_artifacts:parchment {count: 3} store result storage ancient_artifacts:parchment correct int 1 run random value 1..3
scoreboard players set #loop_count temp 0
function ancient_artifacts:ancient_parchment/generate/common/gen_dim
function ancient_artifacts:ancient_parchment/generate/common/rand_max
scoreboard players set #loop_count temp 0
data remove storage ancient_artifacts:parchment relics
data modify storage ancient_artifacts:parchment current set from storage ancient_artifacts:parchment count
function ancient_artifacts:ancient_parchment/generate/equal/random_relic with storage ancient_artifacts:parchment
execute if score #success temp matches 0 store result storage ancient_artifacts:parchment count int 1 if data storage ancient_artifacts:parchment relics[]
data modify storage ancient_artifacts:parchment compare set value "equal"
data modify storage ancient_artifacts:parchment artifact set from storage ancient_artifacts:parchment artifact.id
function ancient_artifacts:ancient_parchment/generate/common/modify_item with storage ancient_artifacts:parchment
item modify entity @s weapon.mainhand {function: "set_custom_model_data", flags: {mode: "replace_section", offset: 0, values: [false]}}
