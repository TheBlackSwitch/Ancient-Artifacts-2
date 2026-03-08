execute as @a[distance=..5] run damage @s 5 explosion
playsound block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
playsound entity.wind_charge.wind_burst hostile @a ~ ~ ~ 1 0.65
particle explosion_emitter
particle gust_emitter_small
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"dragon_breath"},Radius:2f,RadiusPerTick:0.01f,RadiusOnUse:-0.4f,Duration:200,potion_contents:{potion:"minecraft:harming",custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}]},Tags:[dragons_breath,INIT]}
kill @s