scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range: 8, sky_check: true}
execute if score @s raycast_limit matches 399.. run return fail
execute store result score @s random run random value 1..7
execute if score @s random matches 1..5 run return run function ancient_artifacts:mobspawn/init_summon {min: 1, max: 2, mob: "minecraft:witch", nbt: {}, cap: 7, range: 25, TAG: "mobspawned"}
execute if score @s random matches 6..7 run return run function ancient_artifacts:mobspawn/init_summon {min: 0, max: 1, mob: "minecraft:illusioner", nbt: {}, cap: 7, range: 25, TAG: "mobspawned"}
