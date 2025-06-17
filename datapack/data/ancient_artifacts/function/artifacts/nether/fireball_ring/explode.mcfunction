summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2}
particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 2 2 0.01 30 force
particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 2 2 0.01 70
particle minecraft:lava ~ ~ ~ 2 2 2 0.2 100 force
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute store result score .allow_mob_greefing temp run gamerule mobGriefing

gamerule commandBlockOutput false

execute if score .allow_mob_greefing temp matches 1 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 repeating_command_block{Command:'function ancient_artifacts:artifacts/nether/fireball_ring/fire',auto:true} replace air

execute as @e[type=ghast,nbt={active_effects:[{id:"minecraft:unluck"}]}] run kill @s
execute if entity @e[type=ghast,distance=..10] run playsound entity.ghast.death hostile @a ~ ~ ~ 10 1
kill @e[type=ghast,distance=..10]
kill @s