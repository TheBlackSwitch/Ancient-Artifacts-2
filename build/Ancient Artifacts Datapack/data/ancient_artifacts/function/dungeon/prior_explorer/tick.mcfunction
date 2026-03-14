execute unless data entity @s interaction run return 1
execute on target run function ancient_artifacts:dungeon/prior_explorer/tick/nested_execute_0
playsound item.armor.equip_leather player @a ~ ~ ~ 1 0.9
playsound item.armor.equip_leather player @a ~ ~ ~ 1 1.2
data modify entity @n[type=item_display, tag=prior_explorer, tag=skeleton] item.components."minecraft:item_model" set value "ancient_artifacts:entity/prior_explorer/skeleton_looted"
kill @s
