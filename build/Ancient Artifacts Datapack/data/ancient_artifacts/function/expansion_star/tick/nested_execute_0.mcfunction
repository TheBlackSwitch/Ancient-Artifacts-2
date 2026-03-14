execute if entity @s[tag=!ethernal_expanded] run scoreboard players set @s artifact_slot_count 2
execute if predicate ancient_artifacts:has_effect/luck run function ancient_artifacts:expansion_star/expanded/active
