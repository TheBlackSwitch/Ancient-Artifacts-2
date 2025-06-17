##Select animation
execute if entity @s[tag=recycling] run function ancient_artifacts:artifact_cauldron/recipes/recycling/animation
execute if entity @s[tag=crafting] run function ancient_artifacts:artifact_cauldron/recipes/crafting/animation
execute if entity @s[tag=failing] run function ancient_artifacts:artifact_cauldron/recipes/fail

execute if score @s animation matches 0 run scoreboard players set @s current_recipe 0
execute if score @s animation matches 1.. run scoreboard players remove @s animation 1