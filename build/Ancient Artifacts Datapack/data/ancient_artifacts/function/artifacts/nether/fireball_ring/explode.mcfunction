summon tnt ~ ~ ~ {fuse: 0, explosion_power: 2, CustomName: "fireball"}
particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 2 2 0.01 30 force
particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 2 2 0.01 70
particle minecraft:lava ~ ~ ~ 2 2 2 0.2 100 force
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute store result score #allow_mob_greefing temp run function ancient_artifacts:utilities/gamerule/get_mobgreefing
execute if score #allow_mob_greefing temp matches 1 run summon marker ~ ~ ~ {Tags: ["aa.fill_fire"]}
scoreboard players operation #search tbs.ID = @s tbs.ID
execute if entity @e[type=ghast, distance=..10] run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] ghasts_fireballed 1
execute as @e[type=ghast, nbt={active_effects: [{id: "minecraft:unluck"}]}] run kill @s
execute if entity @e[type=ghast, distance=..10] run playsound entity.ghast.death hostile @a ~ ~ ~ 10 1
kill @e[type=ghast, distance=..10]
kill @s
