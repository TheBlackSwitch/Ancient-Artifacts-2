scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range: 20, sky_check: false}
execute if score @s raycast_limit matches 399.. run return fail
execute as @e[tag=mobspawned, distance=40..] at @s unless entity @a[distance=..40] run function ancient_artifacts:mobspawn/despawn_mob
execute store result score @s random run random value 1..13
execute if score @s random matches 1..2 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 5, mob: "minecraft:cave_spider", nbt: {}, cap: 10, range: 30, TAG: "buffed"}
execute if score @s random matches 3..4 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 2, mob: "minecraft:silver_fish", nbt: {}, cap: 10, range: 30, TAG: "buffed"}
execute if score @s random matches 5..6 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 2, mob: "minecraft:zombie", nbt: {}, cap: 10, range: 30, TAG: "buffed"}
execute if score @s random matches 7..8 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 2, mob: "minecraft:husk", nbt: {}, cap: 10, range: 30, TAG: "buffed"}
execute if score @s random matches 9..10 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 2, mob: "minecraft:skeleton", nbt: {equipment: {mainhand: {id: "minecraft:bow", count: 1}}}, cap: 10, range: 30, TAG: "buffed"}
execute if score @s random matches 11..12 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 2, mob: "minecraft:stray", nbt: {equipment: {mainhand: {id: "minecraft:bow", count: 1}}}, cap: 10, range: 30, TAG: "buffed"}
execute if score @s random matches 13 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 2, mob: "minecraft:bogged", nbt: {equipment: {mainhand: {id: "minecraft:bow", count: 1}}}, cap: 10, range: 30, TAG: "buffed"}
