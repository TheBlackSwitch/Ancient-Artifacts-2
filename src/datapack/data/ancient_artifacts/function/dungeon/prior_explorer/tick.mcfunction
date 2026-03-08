
execute unless data entity @s interaction run return 1

execute on target:
    loot give @s loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"shield","functions":[{"function":"set_damage",damage:{min:0.1,max:0.5}}]}]}]}
    loot give @s loot ancient_artifacts:item/dungeon_catalog

execute run playsound item.armor.equip_leather player @a ~ ~ ~ 1 0.9
playsound item.armor.equip_leather player @a ~ ~ ~ 1 1.2
data modify entity @n[type=item_display,tag=prior_explorer,tag=skeleton] item.components."minecraft:item_model" set value "ancient_artifacts:entity/prior_explorer/skeleton_looted"

kill @s