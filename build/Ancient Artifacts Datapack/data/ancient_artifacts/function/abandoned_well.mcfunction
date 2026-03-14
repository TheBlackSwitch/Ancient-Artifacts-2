execute positioned ~-1 ~-0.5 ~-1 unless entity @e[type=item, dx=1, dy=0, dz=1, nbt={Item: {id: "minecraft:amethyst_shard"}}] run return fail
playsound entity.experience_orb.pickup block @a ~ ~ ~ 1 1.2
playsound block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 0.8
particle dust{color: [1.0d, 0.0d, 1.0d], scale: 3} ~ ~ ~ 0.2 0.2 0.2 0 3 force
setblock ~ ~1 ~ air
summon marker ~ ~1 ~ {Tags: ["artifact_chest_place", "overworld"]}
execute as @e[type=marker, tag=artifact_chest_place] at @s run function ancient_artifacts:artifact_chests/place
kill @e[type=item, dx=1, dy=0, dz=1, nbt={Item: {id: "minecraft:amethyst_shard"}}]
scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range: 10, sky_check: false}
execute if score @s raycast_limit matches 399.. run return fail
function ancient_artifacts:mobspawn/init_summon {min: 3, max: 4, mob: "minecraft:zombie", nbt: {equipment: {head: {id: "minecraft:leather_helmet", count: 1}}}, cap: 6, range: 15, TAG: "mobspawned"}
function ancient_artifacts:mobspawn/init_summon {min: 2, max: 3, mob: "minecraft:skeleton", nbt: {equipment: {mainhand: {id: "minecraft:bow", count: 1}, head: {id: "minecraft:leather_helmet", count: 1}}}, cap: 6, range: 15, TAG: "mobspawned"}
kill @s
