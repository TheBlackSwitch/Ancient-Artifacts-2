execute as @e[type=interaction, limit=1, sort=nearest, tag=!opened] run function ancient_artifacts:artifact_chests/obsidian/interact/nested_execute_3
execute if predicate ancient_artifacts:survival run clear @s amethyst_shard[!custom_data~{smithed: {ignore: {crafting: true}}}, !custom_data~{compound: true}] 1
