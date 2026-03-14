execute if block ~ ~ ~ water_cauldron run function ancient_artifacts:artifact_cauldron/interact/interact
execute if block ~ ~ ~ lava_cauldron run function ancient_artifacts:artifact_cauldron/interact/interact
execute if block ~ ~ ~ powder_snow run function ancient_artifacts:artifact_cauldron/interact/interact

execute unless block ~ ~ ~ #cauldrons run function ancient_artifacts:artifact_cauldron/break/init

##Init
execute unless score @s current_recipe matches -1.. run scoreboard players set @s current_recipe 0
execute unless score @s prev_recipe matches -1.. run scoreboard players set @s prev_recipe 0

##Ticks
function ancient_artifacts:artifact_cauldron/recipes/tick
execute if score @s current_recipe matches -1 align xyz run function ancient_artifacts:artifact_cauldron/recipes/animate
execute align xyz run function ancient_artifacts:artifact_cauldron/tooltip/tick


