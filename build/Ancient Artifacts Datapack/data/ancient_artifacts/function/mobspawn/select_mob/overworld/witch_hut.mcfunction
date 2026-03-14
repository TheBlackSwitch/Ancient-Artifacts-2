scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range: 6, sky_check: false}
execute if score @s raycast_limit matches 399.. run return fail
function ancient_artifacts:mobspawn/init_summon {min: 0, max: 1, mob: "minecraft:witch", nbt: {}, cap: 2, range: 25, TAG: "mobspawned"}
