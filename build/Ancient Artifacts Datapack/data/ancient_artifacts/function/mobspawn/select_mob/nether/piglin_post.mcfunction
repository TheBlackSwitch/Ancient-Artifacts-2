execute if dimension minecraft:overworld run return fail
scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range: 8, sky_check: false}
execute if score @s raycast_limit matches 399.. run return fail
execute store result score @s random run random value 1..5
execute if score @s random matches 1..2 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 2, mob: "minecraft:piglin", nbt: {equipment: {mainhand: {id: "minecraft:golden_sword", count: 1}}}, cap: 5, range: 12, TAG: "mobspawned"}
execute if score @s random matches 3..4 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 3, mob: "minecraft:piglin", nbt: {equipment: {mainhand: {id: "minecraft:crossbow", count: 1}}}, cap: 5, range: 12, TAG: "mobspawned"}
execute if score @s random matches 5 run return run function ancient_artifacts:mobspawn/init_summon {min: 0, max: 1, mob: "minecraft:piglin_brute", nbt: {equipment: {mainhand: {id: "minecraft:golden_axe", count: 1}}}, cap: 6, range: 25, TAG: "mobspawned"}
