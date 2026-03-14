execute unless items entity @a[predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] armor.legs *[minecraft:custom_data~{tbs.overlay: {applied: 1b}}] run return fail
execute if data entity @s Items[{Slot: 2b, components: {"minecraft:custom_data": {tbs.clear_inventory: true}}}] run return run function theblackswitch:v2.0/patch-1/overlay/show/update/legs/nested_return_0
execute if data entity @s Items[{Slot: 2b, components: {"minecraft:custom_data": {tbs.overlay: {equippable: "none"}}}}] run data remove entity @s Items[{Slot: 2b}].components."minecraft:equippable"
execute unless data entity @s Items[{Slot: 2b, components: {"minecraft:custom_data": {tbs.overlay: {equippable: "none"}}}}] run data modify entity @s Items[{Slot: 2b}].components."minecraft:equippable" set from entity @s Items[{Slot: 2b}].components."minecraft:custom_data"."tbs.overlay".equippable
data remove entity @s Items[{Slot: 2b}].components."minecraft:custom_data"."tbs.overlay"
item replace entity @a[predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] armor.legs from entity @s container.2
function theblackswitch:v2.0/patch-1/overlay/show/kill_minecart
