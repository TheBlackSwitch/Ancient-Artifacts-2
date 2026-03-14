scoreboard players set @s final_shout_max 0
scoreboard players set @s final_shout_cd 3600
function ancient_artifacts:tag_tamed
effect give @s levitation 1 25 true
effect give @e[tag=tamed, distance=..15] levitation 1 15 true
effect give @s resistance 5 5 true
effect give @e[tag=tamed, distance=..15] resistance 5 5 true
effect give @e[tag=tamed, distance=..15] instant_health 1 1 true
execute as @e[tag=tamed, distance=..15] run data modify entity @s Fire set value 0s
effect give @s minecraft:instant_health 1 1 true
playsound minecraft:entity.generic.explode block @a ~ ~-3 ~ 1 0.7
playsound minecraft:item.totem.use player @a ~ ~ ~ 1 1
playsound minecraft:item.totem.use player @s ~ ~ ~ 10 1
playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 10 1
playsound minecraft:entity.wither.death master @s ~ ~ ~ 10 2 1
particle minecraft:explosion ~ ~1 ~ 0.3 0.3 0.3 0 2 force
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 200
particle dust{color: [0.8d, 0.8d, 1.0d], scale: 4} ~ ~ ~ 2 0.1 2 0 100 normal
execute store result score .before_damage temp if entity @e[tag=!tamed, distance=..15, type=!#ancient_artifacts:no_damage, tag=!no_damage]
execute as @e[tag=!tamed, distance=..7, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, tag=!no_damage] run damage @s 6 ancient_artifacts:final_shout by @p
summon wind_charge ~4 ~ ~ {Motion: [0.0d, -5.0d, 0.0d]}
summon wind_charge ~-4 ~ ~ {Motion: [0.0d, -5.0d, 0.0d]}
summon wind_charge ~ ~ ~4 {Motion: [0.0d, -5.0d, 0.0d]}
summon wind_charge ~ ~ ~-4 {Motion: [0.0d, -5.0d, 0.0d]}
execute store result score .after_damage temp if entity @e[tag=!tamed, distance=..15, type=!#ancient_artifacts:no_damage, tag=!no_damage]
execute store result score .kills temp run scoreboard players operation .before_damage temp -= .after_damage temp
execute if score .kills temp matches 15.. run advancement grant @s only ancient_artifacts:artifacts/overworld/final_shout_expert
tag @s add shouting
