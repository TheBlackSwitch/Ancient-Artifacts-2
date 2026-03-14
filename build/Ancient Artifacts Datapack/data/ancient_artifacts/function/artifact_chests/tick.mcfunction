execute as @a if score @s cod_spawn_egg_use matches 1.. as @e[type=marker, tag=artifact_chest_place] at @s run function ancient_artifacts:artifact_chests/place
execute as @e[type=interaction, tag=artifact_chest, scores={animation=0..}] at @s positioned ~ ~0.5 ~ run function ancient_artifacts:artifact_chests/tick/nested_execute_0
