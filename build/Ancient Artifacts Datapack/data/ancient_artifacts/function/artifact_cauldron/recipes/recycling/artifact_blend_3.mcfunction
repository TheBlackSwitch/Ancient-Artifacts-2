function ancient_artifacts:artifact_cauldron/recipes/particle/finish_recipe
scoreboard players set @s current_recipe -1
tag @s add recycling
scoreboard players set @s animation 90
execute align xyz run scoreboard players add @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] level 1
execute as @n[type=item, dy=0, nbt={Item: {components: {"minecraft:custom_data": {artifact_blend: true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/process_item
