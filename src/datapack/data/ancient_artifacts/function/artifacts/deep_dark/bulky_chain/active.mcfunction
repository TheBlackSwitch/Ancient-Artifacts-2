execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 117 run tag @s add bulk_1
execute if score @s artifact matches 118 run tag @s add bulk_2
execute if score @s artifact matches 119 run tag @s add bulk_3
execute if predicate theblackswitch:__version__/__patch__/movement_check/sneak if score @s artifact matches 117 if predicate ancient_artifacts:holding_tool run attribute @s block_break_speed modifier add bulky_chain -0.88 add_multiplied_total
execute if predicate theblackswitch:__version__/__patch__/movement_check/sneak if score @s artifact matches 118.. if predicate ancient_artifacts:holding_tool run attribute @s block_break_speed modifier add bulky_chain -0.92 add_multiplied_total
execute unless predicate ancient_artifacts:sneaking run attribute @s block_break_speed modifier remove bulky_chain
execute unless predicate ancient_artifacts:holding_tool run attribute @s block_break_speed modifier remove bulky_chain