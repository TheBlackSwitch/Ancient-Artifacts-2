effect give @s resistance 2 255 true
effect give @s slowness 2 255 true
effect give @s blindness 2 255 true
tellraw @a[distance=..64] [{text: "[Lost shulker]: ", color: "yellow"}, {text: "Haha! You fell! That gives me some time to heal!", color: "dark_red"}]
tp @s ~0.5 ~ ~4
execute at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 1 0
execute at @s run playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.7
execute at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0.7 0 0.4 100
scoreboard players set .fraction temp 4
execute store result score .health temp run data get entity @n[type=shulker, tag=shulker_king, distance=..64] Health
execute store result score .max_health temp run attribute @n[type=shulker, tag=shulker_king, distance=..64] max_health get
scoreboard players operation .max_health temp -= .health temp
scoreboard players operation .max_health temp /= .fraction temp
execute store result entity @n[type=shulker, tag=shulker_king, distance=..64] Health float 1 run scoreboard players operation .health temp += .max_health temp
