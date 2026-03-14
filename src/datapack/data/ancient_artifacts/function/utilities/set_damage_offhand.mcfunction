$item modify entity @s weapon.offhand {"function": "minecraft:set_components","components": {"minecraft:damage":$(damage)}}
execute if predicate ancient_artifacts:is_item_dead_offhand at @s run playsound entity.item.break player @a
execute if predicate ancient_artifacts:is_item_dead_offhand run item replace entity @s weapon.offhand with air
