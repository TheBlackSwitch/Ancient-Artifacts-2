execute unless score @s animation matches 0.. if entity @p[distance=..5] store result score @s animation run random value 10..27
execute if score @s animation matches 2 run summon creeper ~4 ~2 ~ {ExplosionRadius:3,Fuse:0}
execute if score @s animation matches 1 run summon creeper ~ ~1 ~4 {ExplosionRadius:3,Fuse:0}
execute if score @s animation matches 0 run summon creeper ~ ~-1 ~ {ExplosionRadius:2,Fuse:0}
execute if score @s animation matches 0 run place template dungeon:explosion ~-2 ~-3 ~-2
execute if score @s animation matches 2 run particle minecraft:firework ~4 ~3 ~ 0.1 0.1 0.1 0.5 100
execute if score @s animation matches 2 run particle minecraft:explosion_emitter ~4 ~3 ~ 0.1 0.1 0.1 0.5 1
execute if score @s animation matches 1 run particle minecraft:firework ~ ~3 ~4 0.1 0.1 0.1 0.5 100
execute if score @s animation matches 1 run particle minecraft:explosion_emitter ~ ~3 ~4 0.1 0.1 0.1 0.5 1
execute if score @s animation matches 0 run particle minecraft:firework ~ ~-2 ~-2 0.1 0.1 0.1 0.5 100
execute if score @s animation matches 0 run particle minecraft:explosion_emitter ~ ~-2 ~-2 0.1 0.1 0.1 0.5 1
execute if score @s animation matches 0..2 run playsound minecraft:entity.elder_guardian.death master @a ~ ~ ~ 1 2
execute if score @s animation matches 0..2 run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 10 1
execute if score @s animation matches 0..2 run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 10 1
execute if score @s animation matches 0..2 run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 10 1
execute if score @s animation matches 0..2 run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 10 1
execute if score @s animation matches 0..2 run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 10 1
execute if score @s animation matches 0..2 run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 10 1
execute if score @s animation matches 0..2 run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 10 1
execute if score @s animation matches 0..2 run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 10 1
execute if score @s animation matches 0 run kill @s
scoreboard players remove @s animation 1
