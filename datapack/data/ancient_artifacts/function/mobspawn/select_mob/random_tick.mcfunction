##Gamerule
execute store result score .1 temp run gamerule doMobSpawning
execute if score .1 temp matches 0 run return fail

##Overworld
execute at @s[type=player] if entity @e[type=marker,tag=dungeon_marker,tag=!weak_effects,distance=..20] run function ancient_artifacts:mobspawn/select_mob/overworld/dungeon
execute at @s[tag=jungle_temple,predicate=ancient_artifacts:random/6] run function ancient_artifacts:mobspawn/select_mob/overworld/jungle_temple
execute at @s[tag=water_ruin,predicate=ancient_artifacts:random/3] run function ancient_artifacts:mobspawn/select_mob/overworld/water_ruin
execute at @s[tag=desert_pyramid,predicate=ancient_artifacts:random/6] run function ancient_artifacts:mobspawn/select_mob/overworld/desert_pyramid
execute at @s[tag=outpost_bottom,predicate=ancient_artifacts:random/5] run function ancient_artifacts:mobspawn/select_mob/overworld/outpost_bottom
execute at @s[tag=outpost_top,predicate=ancient_artifacts:random/1] run function ancient_artifacts:mobspawn/select_mob/overworld/outpost_top
execute at @s[tag=house_ruin,predicate=ancient_artifacts:random/3] run function ancient_artifacts:mobspawn/select_mob/overworld/house_ruin
execute at @s[tag=witch_hut,predicate=ancient_artifacts:random/3] run function ancient_artifacts:mobspawn/select_mob/overworld/witch_hut
execute at @s[tag=igloo,predicate=ancient_artifacts:random/3] run function ancient_artifacts:mobspawn/select_mob/overworld/igloo

##Nether
execute at @s[tag=fortress,predicate=ancient_artifacts:random/1] run function ancient_artifacts:mobspawn/select_mob/nether/fortress
execute at @s[tag=piglin_post,predicate=ancient_artifacts:random/2] run function ancient_artifacts:mobspawn/select_mob/nether/piglin_post
execute at @s[tag=portal,predicate=ancient_artifacts:random/2] run function ancient_artifacts:mobspawn/select_mob/nether/portal


execute if entity @s[type=!player] unless entity @e[type=interaction,tag=artifact_chest,tag=!opened,distance=..40] run kill @s