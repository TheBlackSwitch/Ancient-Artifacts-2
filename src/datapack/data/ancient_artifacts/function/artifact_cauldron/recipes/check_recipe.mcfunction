tag @s remove recipe_succes


execute unless score @s current_recipe matches -1 if entity @e[type=item,dy=0,nbt={Item:{components:{"minecraft:custom_data":{"corruption_fragment":true}}}}] run function ancient_artifacts:_april_fools_/cauldron/spawn_portal/init

##If current_recipe is -1 the cauldron is animating

##Select between recycling and crafting
execute if score @s current_recipe matches 1 if entity @e[type=item,dy=0,nbt={Item:{components:{"minecraft:custom_data":{"artifact_blend":true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/recycling/artifact_blend_1
execute if score @s current_recipe matches 1 if entity @e[type=item,dy=0,nbt={Item:{components:{"minecraft:custom_data":{"artifact_template":true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/crafting/template


##Recycling (10-16)
#2nd blend
execute if score @s current_recipe matches 10 if entity @e[type=item,dy=0,nbt={Item:{components:{"minecraft:custom_data":{"artifact_blend":true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/recycling/artifact_blend_2

#Essence or 3rd blend
execute if score @s current_recipe matches 11..15 if entity @e[type=item,dy=0,nbt={Item:{components:{"minecraft:custom_data":{"artifact_essence":true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/recycling/essence
execute if score @s current_recipe matches 11..15 if entity @e[type=item,dy=0,nbt={Item:{components:{"minecraft:custom_data":{"artifact_blend":true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/recycling/artifact_blend_3

#Force 3rd blend after 5 essence
execute if score @s current_recipe matches 16 if entity @e[type=item,dy=0,nbt={Item:{components:{"minecraft:custom_data":{"artifact_blend":true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/recycling/artifact_blend_3

##Crafting (20-21)
execute if score @s current_recipe matches 20 if entity @e[type=item,dy=0,nbt={Item:{components:{"minecraft:custom_data":{"compound":1b}}}}] run function ancient_artifacts:artifact_cauldron/recipes/crafting/compound
execute if score @s current_recipe matches 20 if entity @e[type=item,dy=0,nbt={Item:{id:"minecraft:amethyst_shard"}}] run function ancient_artifacts:artifact_cauldron/recipes/crafting/compound


execute if score @s current_recipe matches 22 run function ancient_artifacts:artifact_cauldron/recipes/crafting/relic
execute if score @s current_recipe matches 21 run scoreboard players set @s current_recipe 22

##On succes
execute if entity @s[tag=recipe_succes] run function ancient_artifacts:artifact_cauldron/tooltip/edit

##On fail
execute if score @s current_recipe matches 10.. unless entity @s[tag=recipe_succes] run function ancient_artifacts:artifact_cauldron/recipes/init_fail