function ancient_artifacts:advancements/triggers/open_nether_chest
scoreboard players set @n[type=interaction, tag=!opened] animation 30
execute if predicate ancient_artifacts:survival run clear @s *[minecraft:custom_data~{compound: 1b, type: "nether"}] 1
