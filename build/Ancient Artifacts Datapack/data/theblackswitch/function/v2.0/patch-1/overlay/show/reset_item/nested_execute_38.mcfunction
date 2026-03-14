item replace entity @s container.0 from entity @a[predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] player.cursor
execute if data entity @s Items[{Slot: 0b, components: {"minecraft:custom_data": {tbs.overlay: {equippable: "none"}}}}] run data remove entity @s Items[{Slot: 0b}].components."minecraft:equippable"
execute unless data entity @s Items[{Slot: 0b, components: {"minecraft:custom_data": {tbs.overlay: {equippable: "none"}}}}] run data modify entity @s Items[{Slot: 0b}].components."minecraft:equippable" set from entity @s Items[{Slot: 0b}].components."minecraft:custom_data"."tbs.overlay".equippable
data remove entity @s Items[{Slot: 0b}].components."minecraft:custom_data"."tbs.overlay"
item replace entity @a[predicate=theblackswitch:v2.0/patch-1/player_id/match_search, limit=1] player.cursor from entity @s container.0
function theblackswitch:v2.0/patch-1/overlay/show/kill_minecart
