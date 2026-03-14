function ancient_artifacts:artifact_cauldron/recipes/particle/generic_item
execute as @n[type=item,dy=0]:
    execute if items entity @s container.0 *[minecraft:custom_data~{compound:1b}] run return run function ancient_artifacts:artifact_cauldron/recipes/process_item
    execute if items entity @s container.0 minecraft:amethyst_shard run function ancient_artifacts:artifact_cauldron/recipes/process_item
    
scoreboard players set @s current_recipe 21

##grab last item added
data modify storage ancient_artifacts:item compound set from entity @s data.Items[-1]

##Store template level
execute unless data storage ancient_artifacts:item compound.components."minecraft:custom_data".type run data modify entity @s data.craft.origin set value overworld
execute if data storage ancient_artifacts:item compound.components."minecraft:custom_data".type run data modify entity @s data.craft.origin set from storage ancient_artifacts:item compound.components."minecraft:custom_data".type

##Fluid color
execute if data entity @s {data:{craft:{origin:"overworld"}}} run function ancient_artifacts:artifact_cauldron/fluid/merge_color {R:252,G:106,B:252}
execute if data entity @s {data:{craft:{origin:"nether"}}} run function ancient_artifacts:artifact_cauldron/fluid/merge_color {R:255,G:99,B:99}
execute if data entity @s {data:{craft:{origin:"end"}}} run function ancient_artifacts:artifact_cauldron/fluid/merge_color {R:163,G:134,B:168}
execute if data entity @s {data:{craft:{origin:"deep dark"}}} run function ancient_artifacts:artifact_cauldron/fluid/merge_color {R:0,G:40,B:48}

scoreboard players add @n[type=text_display,dy=0,tag=artifact_cauldron,tag=fluid] level 2