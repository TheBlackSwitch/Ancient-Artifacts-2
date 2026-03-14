summon marker ~0.5 ~ ~0.5 {Tags: ["artifact_chest_place", "obsidian"]}
execute as @e[type=marker, tag=artifact_chest_place] at @s run function ancient_artifacts:artifact_chests/place
