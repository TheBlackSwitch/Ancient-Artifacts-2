summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"dragon_breath"},Radius:2f,RadiusPerTick:0.01f,RadiusOnUse:-0.4f,Duration:200,potion_contents:{potion:"minecraft:harming",custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}]},Tags:[daragons_breath,INIT]}
data modify entity @n[tag=daragons_breath,tag=INIT] Owner set from entity @p[predicate=theblackswitch:__version__/__patch__/player_id/match_search] UUID
tag @e[tag=daragons_breath] remove INIT

scoreboard players add @s breath_clouds 1
