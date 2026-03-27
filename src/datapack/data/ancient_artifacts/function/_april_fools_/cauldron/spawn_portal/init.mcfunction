tag @s add spawn_portal
scoreboard players set @s animation 201
scoreboard players set @s current_recipe -1
function ancient_artifacts:artifact_cauldron/recipes/particle/generic_item
execute as @n[type=item,dy=0,nbt={Item:{components:{"minecraft:custom_data":{"corruption_fragment":true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/process_item
