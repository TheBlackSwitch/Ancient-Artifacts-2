# Gamerule
execute store result score #do_mobspawn temp run function ancient_artifacts:utilities/gamerule/get_mobspawn
execute if score #do_mobspawn temp matches 0 run return fail

# Overworld mob pools
execute at @s[type=player,predicate=theblackswitch:__version__/__patch__/rand/30] if entity @e[type=marker,tag=dungeon_marker,tag=!weak_effects,distance=..20] run return run function ancient_artifacts:mobspawn/select_mob/overworld/dungeon
execute at @s[tag=jungle_temple,predicate=theblackswitch:__version__/__patch__/rand/6] run return run function ancient_artifacts:mobspawn/select_mob/overworld/jungle_temple
execute at @s[tag=water_ruin,predicate=theblackswitch:__version__/__patch__/rand/2] run return run function ancient_artifacts:mobspawn/select_mob/overworld/water_ruin
execute at @s[tag=desert_pyramid,predicate=theblackswitch:__version__/__patch__/rand/6] run return run function ancient_artifacts:mobspawn/select_mob/overworld/desert_pyramid
execute at @s[tag=outpost_bottom,predicate=theblackswitch:__version__/__patch__/rand/5] run return run function ancient_artifacts:mobspawn/select_mob/overworld/outpost_bottom
execute at @s[tag=outpost_top,predicate=theblackswitch:__version__/__patch__/rand/1] run return run function ancient_artifacts:mobspawn/select_mob/overworld/outpost_top
execute at @s[tag=house_ruin,predicate=theblackswitch:__version__/__patch__/rand/3] run return run function ancient_artifacts:mobspawn/select_mob/overworld/house_ruin
execute at @s[tag=witch_hut,predicate=theblackswitch:__version__/__patch__/rand/3] run return run function ancient_artifacts:mobspawn/select_mob/overworld/witch_hut
execute at @s[tag=igloo,predicate=theblackswitch:__version__/__patch__/rand/3] run return run function ancient_artifacts:mobspawn/select_mob/overworld/igloo

# Nether mob pools
execute at @s[tag=fortress,predicate=theblackswitch:__version__/__patch__/rand/1] run return run function ancient_artifacts:mobspawn/select_mob/nether/fortress
execute at @s[tag=piglin_post,predicate=theblackswitch:__version__/__patch__/rand/2] run return run function ancient_artifacts:mobspawn/select_mob/nether/piglin_post
execute at @s[tag=portal,predicate=theblackswitch:__version__/__patch__/rand/2] run return run function ancient_artifacts:mobspawn/select_mob/nether/portal