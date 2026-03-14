function ancient_artifacts:artifact_cauldron/recipes/particle/generic_item
scoreboard players set @s current_recipe 11
execute as @n[type=item, dy=0, nbt={Item: {components: {"minecraft:custom_data": {artifact_blend: true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/process_item
