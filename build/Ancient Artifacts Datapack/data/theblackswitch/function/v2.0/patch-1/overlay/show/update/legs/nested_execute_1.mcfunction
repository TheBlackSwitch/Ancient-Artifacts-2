function theblackswitch:v2.0/patch-1/overlay/show/reconstruct_equippable/legs
execute unless data entity @s Items[{Slot: 2b}].components."minecraft:custom_data"."tbs.overlay".equippable run function theblackswitch:v2.0/patch-1/overlay/show/update/legs/nested_execute_0
data modify entity @s Items[{Slot: 2b}].components."minecraft:custom_data"."tbs.overlay".applied set value true
data modify entity @s Items[{Slot: 2b}].components."minecraft:custom_data"."tbs.overlay".version.id set from storage theblackswitch:overlay data[2].id
data modify entity @s Items[{Slot: 2b}].components."minecraft:custom_data"."tbs.overlay".version.number set from storage theblackswitch:overlay data[2].version
data modify storage theblackswitch:overlay equippable_reconstruct.camera_overlay set from storage theblackswitch:overlay data[2].texture
data modify entity @s Items[{Slot: 2b}].components."minecraft:equippable" set from storage theblackswitch:overlay equippable_reconstruct
item replace entity @a[predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] armor.legs from entity @s container.2
