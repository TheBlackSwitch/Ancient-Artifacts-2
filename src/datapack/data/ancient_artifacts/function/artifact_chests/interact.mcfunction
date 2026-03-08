# @on_event: interact
execute as @e[type=interaction,tag=artifact_chest,tag=overworld,distance=..20] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/overworld/interact
execute as @e[type=interaction,tag=artifact_chest,tag=nether,distance=..20] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/nether/interact
execute as @e[type=interaction,tag=artifact_chest,tag=deep_dark,distance=..20] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/deep_dark/interact
execute as @e[type=interaction,tag=artifact_chest,tag=end,distance=..20] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/end/interact
execute as @e[type=interaction,tag=artifact_chest,tag=obsidian,distance=..20] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/obsidian/interact

# Fix minecraft's wonky struture gen sometimes spawning double the entities
execute as @e[type=item_display,tag=artifact_chest,tag=!checked,distance=..20] at @s if loaded ~ ~ ~ run function ancient_artifacts:artifact_chests/check_multiple_displays
execute as @e[type=interaction,tag=artifact_chest,tag=!checked,distance=..20] at @s if loaded ~ ~ ~ run function ancient_artifacts:artifact_chests/check_multiple_interactions