# @on_event: attack

# Start breaking the block
execute as @e[type=interaction,tag=artifact_chest,distance=..20] at @s if data entity @s attack run function ancient_artifacts:artifact_chests/break

# Fix minecraft's wonky struture gen sometimes spawning double the entities
execute as @e[type=item_display,tag=artifact_chest,tag=!checked,distance=..20] at @s if loaded ~ ~ ~ run function ancient_artifacts:artifact_chests/check_multiple_displays
execute as @e[type=interaction,tag=artifact_chest,tag=!checked,distance=..20] at @s if loaded ~ ~ ~ run function ancient_artifacts:artifact_chests/check_multiple_interactions