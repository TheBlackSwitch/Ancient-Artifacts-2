function ancient_artifacts:advancements/triggers/open_end_chest
scoreboard players set @n[type=interaction, tag=!opened] animation 60
execute if predicate ancient_artifacts:survival run clear @s *[minecraft:custom_data~{compound: 1b, type: "end"}] 1
