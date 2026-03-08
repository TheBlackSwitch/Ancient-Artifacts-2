#check every 3 ticks for a chest placed, broken or interracted
execute as @a if score @s cod_spawn_egg_use matches 1.. as @e[type=marker,tag=artifact_chest_place] at @s run function ancient_artifacts:artifact_chests/place

execute as @e[type=interaction,tag=artifact_chest,scores={animation=0..}] at @s positioned ~ ~0.5 ~: 
    if entity @s[tag=overworld] run return run function ancient_artifacts:artifact_chests/overworld/animation
    if entity @s[tag=nether] run return run function ancient_artifacts:artifact_chests/nether/animation
    if entity @s[tag=end] run return run function ancient_artifacts:artifact_chests/end/animation
    if entity @s[tag=deep_dark] run return run function ancient_artifacts:artifact_chests/deep_dark/animation
    if entity @s[tag=obsidian] run return run function ancient_artifacts:artifact_chests/obsidian/animation
