particle minecraft:firework ~ ~-2 ~-2 0.1 0.1 0.1 0.5 100
particle minecraft:explosion_emitter ~ ~-2 ~-2 0.1 0.1 0.1 0.5 1
place template dungeon:explosion ~-2 ~-3 ~-2
summon creeper ~ ~-1 ~ {ExplosionRadius: 2, Fuse: 0}
kill @s
