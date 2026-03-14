execute as @n[type=item, dy=0] run function ancient_artifacts:artifact_cauldron/recipes/process_item
data modify entity @s data.craft.relic set from entity @s data.Items[-1].id
data modify storage ancient_artifacts:item relic set from entity @s data.Items[-1].id
execute store success score .correct temp run function ancient_artifacts:artifact_cauldron/recipes/crafting/check_relic with entity @s data.craft
execute if score .correct temp matches 0 run return fail
execute align xyz run function ancient_artifacts:artifact_cauldron/recipes/particle/finish_recipe
scoreboard players set @s current_recipe -1
scoreboard players add @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] level 2
tag @s add crafting
scoreboard players set @s animation 100
