effect give @s instant_health 1
effect give @s resistance 1 6 true
tag @s remove parry
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1.3
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.5 0.8
playsound minecraft:item.shield.block player @a ~ ~ ~
execute rotated ~ 0 run summon firework_rocket ^ ^1 ^1 {LifeTime: 0, FireworksItem: {id: "minecraft:firework_rocket", count: 1, components: {"minecraft:fireworks": {explosions: [{shape: "small_ball", has_trail: true, colors: [16772608], fade_colors: [16757012]}]}}}}
scoreboard players set @s combo.parry 200
