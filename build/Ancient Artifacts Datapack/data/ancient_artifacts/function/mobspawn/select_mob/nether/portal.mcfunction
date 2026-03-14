scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range: 8, sky_check: false}
execute if score @s raycast_limit matches 399.. run return fail
execute store result score @s random run random value 1..3
execute if score @s[tag=crimson] random matches 1..2 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 3, mob: "minecraft:blaze", nbt: {}, cap: 5, range: 25, TAG: "mobspawned"}
execute if score @s[tag=crimson] random matches 3 run return run function ancient_artifacts:mobspawn/init_summon {min: 0, max: 1, mob: "minecraft:hoglin", nbt: {}, cap: 5, range: 25, TAG: "mobspawned"}
execute if score @s[tag=warped] random matches 1..2 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 3, mob: "minecraft:ender_mite", nbt: {}, cap: 6, range: 25, TAG: "mobspawned"}
execute if score @s[tag=warped] random matches 3 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 2, mob: "minecraft:wither_skeleton", nbt: {equipment: {mainhand: {id: "minecraft:stone_sword", count: 1}}}, cap: 6, range: 25, TAG: "mobspawned"}
