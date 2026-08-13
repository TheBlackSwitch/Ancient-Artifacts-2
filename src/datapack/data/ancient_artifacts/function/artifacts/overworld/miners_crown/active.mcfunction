execute if entity @s[tag=focused] run scoreboard players add @s artifact 1


effect give @s haste 1 0 false
execute if score @s artifact matches 28 run tag @s add mine_5
execute if score @s artifact matches 28 if predicate theblackswitch:__version__/__patch__/movement_check/sneak if items entity @s weapon.mainhand #pickaxes run attribute @s block_break_speed modifier add miners_crown -0.75 add_multiplied_total
execute if score @s artifact matches 29.. run tag @s add mine_9
execute if score @s artifact matches 29.. if predicate theblackswitch:__version__/__patch__/movement_check/sneak if items entity @s weapon.mainhand #pickaxes run attribute @s block_break_speed modifier add miners_crown -0.88 add_multiplied_total

execute if score @s artifact matches 30 run effect give @s haste 1 1 false

execute unless predicate ancient_artifacts:sneaking run attribute @s block_break_speed modifier remove miners_crown
execute unless items entity @s weapon.mainhand #pickaxes run attribute @s block_break_speed modifier remove miners_crown