execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute unless score #tbs-v2.0.enabled.overlay tbs.server_data matches 1 run return fail
scoreboard players operation #search tbs.ID = @s tbs.ID
function theblackswitch:v2.0/patch-1/overlay/show/reset_item
data modify storage theblackswitch:overlay data set value []
data remove storage theblackswitch:overlay head
data remove storage theblackswitch:overlay chest
data remove storage theblackswitch:overlay legs
data remove storage theblackswitch:overlay feet
data remove storage theblackswitch:overlay equippable_reconstruct
execute store result storage theblackswitch:overlay player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage theblackswitch:overlay player_storage.path set value "theblackswitch.overlay"
data modify storage theblackswitch:overlay player_storage.result set value "theblackswitch:overlay data"
function theblackswitch:v2.0/patch-1/player_storage/get with storage theblackswitch:overlay player_storage
data remove storage theblackswitch:overlay player_storage
data modify storage theblackswitch:overlay head set from storage theblackswitch:overlay data[0]
data modify storage theblackswitch:overlay chest set from storage theblackswitch:overlay data[1]
data modify storage theblackswitch:overlay legs set from storage theblackswitch:overlay data[2]
data modify storage theblackswitch:overlay feet set from storage theblackswitch:overlay data[3]
execute unless items entity @s armor.head * if data storage theblackswitch:overlay data[0] run item replace entity @s armor.head with minecraft:poisonous_potato[minecraft:item_model="minecraft:air", minecraft:custom_data={tbs.clear_inventory: true, tbs.clear_hotbar: true, tbs.clear_when_dropped: true, tbs.clear_misc: true}, minecraft:equippable={slot: "head", equip_sound: "minecraft:intentionally_empty"}, !minecraft:food, minecraft:tooltip_display={hide_tooltip: true}]
execute unless items entity @s armor.chest * if data storage theblackswitch:overlay data[1] run item replace entity @s armor.chest with minecraft:poisonous_potato[minecraft:item_model="minecraft:air", minecraft:custom_data={tbs.clear_inventory: true, tbs.clear_hotbar: true, tbs.clear_when_dropped: true, tbs.clear_misc: true}, minecraft:equippable={slot: "chest", equip_sound: "minecraft:intentionally_empty"}, !minecraft:food, minecraft:tooltip_display={hide_tooltip: true}]
execute unless items entity @s armor.legs * if data storage theblackswitch:overlay data[2] run item replace entity @s armor.legs with minecraft:poisonous_potato[minecraft:item_model="minecraft:air", minecraft:custom_data={tbs.clear_inventory: true, tbs.clear_hotbar: true, tbs.clear_when_dropped: true, tbs.clear_misc: true}, minecraft:equippable={slot: "legs", equip_sound: "minecraft:intentionally_empty"}, !minecraft:food, minecraft:tooltip_display={hide_tooltip: true}]
execute unless items entity @s armor.feet * if data storage theblackswitch:overlay data[3] run item replace entity @s armor.feet with minecraft:poisonous_potato[minecraft:item_model="minecraft:air", minecraft:custom_data={tbs.clear_inventory: true, tbs.clear_hotbar: true, tbs.clear_when_dropped: true, tbs.clear_misc: true}, minecraft:equippable={slot: "feet", equip_sound: "minecraft:intentionally_empty"}, !minecraft:food, minecraft:tooltip_display={hide_tooltip: true}]
execute summon chest_minecart run function theblackswitch:v2.0/patch-1/overlay/show/update/nested_execute_0
