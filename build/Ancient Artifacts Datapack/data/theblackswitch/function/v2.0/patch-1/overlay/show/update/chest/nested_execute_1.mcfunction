function theblackswitch:v2.0/patch-1/overlay/show/reconstruct_equippable/chest
execute unless data entity @s Items[{Slot: 1b}].components."minecraft:custom_data"."tbs.overlay".equippable run function theblackswitch:v2.0/patch-1/overlay/show/update/chest/nested_execute_0
data modify entity @s Items[{Slot: 1b}].components."minecraft:custom_data"."tbs.overlay".applied set value true
data modify entity @s Items[{Slot: 1b}].components."minecraft:custom_data"."tbs.overlay".version.id set from storage theblackswitch:overlay data[1].id
data modify entity @s Items[{Slot: 1b}].components."minecraft:custom_data"."tbs.overlay".version.number set from storage theblackswitch:overlay data[1].version
data modify storage theblackswitch:overlay equippable_reconstruct.camera_overlay set from storage theblackswitch:overlay data[1].texture
data modify entity @s Items[{Slot: 1b}].components."minecraft:equippable" set from storage theblackswitch:overlay equippable_reconstruct
item replace entity @a[predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] armor.chest from entity @s container.1
