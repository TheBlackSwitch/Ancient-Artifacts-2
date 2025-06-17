execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

tag @s add smelt
execute if score @s artifact matches 69 if predicate ancient_artifacts:holding_tool run attribute @s block_break_speed modifier add smelting_tiara -0.55 add_multiplied_total
execute if score @s artifact matches 70 if predicate ancient_artifacts:holding_tool run attribute @s block_break_speed modifier add smelting_tiara -0.25 add_multiplied_total
execute unless predicate ancient_artifacts:sneaking run attribute @s block_break_speed modifier remove smelting_tiara
execute unless predicate ancient_artifacts:holding_tool run attribute @s block_break_speed modifier remove smelting_tiara