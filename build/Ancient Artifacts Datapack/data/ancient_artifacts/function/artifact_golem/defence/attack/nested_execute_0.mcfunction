execute at @s run particle minecraft:damage_indicator ^ ^1 ^2 0.1 0.1 0.1 0 1
damage @s 2 ancient_artifacts:artifact_golem_thorns by @e[type=zombified_piglin, tag=artifact_golem, tag=center, limit=1, distance=..20, sort=nearest]
execute if predicate ancient_artifacts:holding_tool run function ancient_artifacts:artifact_golem/defence/damage_tool
