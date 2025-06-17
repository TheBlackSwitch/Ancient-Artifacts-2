execute positioned ~-0.5 ~-1 ~-0.5 unless entity @a[dx=0,dy=1,dz=0] run return run kill @s

summon armor_stand ~ ~ ~ {active_effects:[{id:"minecraft:wind_charged",amplifier:0,duration:-1}],Tags:[windcharge]}
summon armor_stand ~ ~ ~ {active_effects:[{id:"minecraft:wind_charged",amplifier:0,duration:-1}],Tags:[windcharge]}
kill @e[type=armor_stand,tag=windcharge,distance=..1]

playsound entity.player.attack.knockback master @a ~ ~ ~ 1 0
playsound entity.generic.explode master @a ~ ~ ~ 0.5 0.6

kill @s