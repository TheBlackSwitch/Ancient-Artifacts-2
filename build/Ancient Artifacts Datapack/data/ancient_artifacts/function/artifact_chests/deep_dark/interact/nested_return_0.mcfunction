function ancient_artifacts:advancements/triggers/open_deep_dark_chest
scoreboard players set @n[type=interaction, tag=!opened] animation 50
execute if predicate ancient_artifacts:survival run clear @s *[minecraft:custom_data~{compound: 1b, type: "deep_dark"}] 1
