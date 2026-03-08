$item modify entity @s weapon.mainhand {"function": "minecraft:set_components","components": {"minecraft:damage":$(damage)}}
execute if predicate ancient_artifacts:is_item_dead at @s run playsound entity.item.break player @a
execute if predicate ancient_artifacts:is_item_dead run item replace entity @s weapon.mainhand with air
