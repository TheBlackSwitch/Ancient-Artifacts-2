##recipes
execute if score #5 tbs.slow_tick matches 5 if score @s current_recipe matches 0 align xyz if score @n[type=text_display,tag=fluid,dy=0] level matches 3 positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:artifact_cauldron/recipes/particle/fluid
execute if score #5 tbs.slow_tick matches 5 if score @s current_recipe matches 1.. align xyz if entity @e[type=item,dy=0,tag=!crafted,tag=!smoking,tag=!recycled] run function ancient_artifacts:artifact_cauldron/recipes/check_recipe
##Dispensable water_bottles
execute if score @s current_recipe matches 0 align xyz unless score @n[type=text_display,tag=fluid,dy=0] level matches 3 as @n[type=item,dy=0,tag=!checked,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] unless data entity @s Thrower run function ancient_artifacts:artifact_cauldron/recipes/water_bottle
