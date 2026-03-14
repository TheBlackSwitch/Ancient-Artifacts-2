function ancient_artifacts:advancements/triggers/open_overworld_chest
scoreboard players set @n[type=interaction, tag=artifact_chest, tag=!opened] animation 30
execute if predicate ancient_artifacts:survival run clear @s amethyst_shard[!custom_data~{smithed: {ignore: {crafting: true}}}, !custom_data~{compound: true}] 1
