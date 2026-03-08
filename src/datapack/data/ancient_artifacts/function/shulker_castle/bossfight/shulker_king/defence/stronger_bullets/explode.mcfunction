execute positioned ~-0.5 ~-1 ~-0.5 unless entity @a[dx=0,dy=1,dz=0] run return run kill @s

execute positioned ~-0.5 ~-1 ~-0.5 at @a[dx=0,dy=1,dz=0] run summon armor_stand ~ ~ ~ {active_effects:[{id:"minecraft:wind_charged",amplifier:0,duration:-1}],Tags:[windcharge]}
execute positioned ~-0.5 ~-1 ~-0.5 at @a[dx=0,dy=1,dz=0] run summon armor_stand ~ ~ ~ {active_effects:[{id:"minecraft:wind_charged",amplifier:0,duration:-1}],Tags:[windcharge]}
kill @e[type=armor_stand,tag=windcharge]

execute positioned ~-0.5 ~-1 ~-0.5 as @a[dx=0,dy=1,dz=0] run effect give @s slowness 10 2
execute positioned ~-0.5 ~-1 ~-0.5 as @a[dx=0,dy=1,dz=0] run damage @s 4 explosion

summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"dragon_breath"},Radius:2f,RadiusPerTick:0.01f,RadiusOnUse:-0.4f,Duration:200,potion_contents:{potion:"minecraft:harming",custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}]},Tags:[daragons_breath,INIT]}
particle gust_emitter_small
execute positioned ~-0.5 ~-1 ~-0.5 run effect clear @a[dx=0,dy=1,dz=0] levitation
playsound block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
playsound entity.wind_charge.wind_burst hostile @a ~ ~ ~ 1 0.65
playsound entity.generic.explode hostile @a

kill @s