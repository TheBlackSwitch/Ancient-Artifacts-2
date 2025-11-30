#check every 3 ticks for a chest placed, broken or interracted
execute if score .3 slow_tick matches 3 as @e[tag=artifact_chest_place] at @s run function ancient_artifacts:artifact_chests/place
execute as @e[type=interaction,tag=artifact_chest] at @s run function ancient_artifacts:artifact_chests/break
execute as @e[type=interaction,tag=artifact_chest,tag=overworld] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/type/overworld
execute as @e[type=interaction,tag=artifact_chest,tag=nether] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/type/nether
execute as @e[type=interaction,tag=artifact_chest,tag=deep_dark] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/type/deep_dark
execute as @e[type=interaction,tag=artifact_chest,tag=end] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/type/end
execute as @e[type=interaction,tag=artifact_chest,tag=obsidian] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/type/obsidian

execute if score .10 slow_tick matches 5 as @e[type=item_display,tag=artifact_chest,tag=!checked] at @s if loaded ~ ~ ~ run function ancient_artifacts:artifact_chests/check_multiple_displays
execute if score .10 slow_tick matches 7 as @e[type=interaction,tag=artifact_chest,tag=!checked] at @s if loaded ~ ~ ~ run function ancient_artifacts:artifact_chests/check_multiple_interactions