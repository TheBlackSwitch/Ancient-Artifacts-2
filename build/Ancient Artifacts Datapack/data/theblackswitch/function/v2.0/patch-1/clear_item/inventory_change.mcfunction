execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute unless score #tbs-v2.0.enabled.clear_item tbs.server_data matches 1 run return fail
clear @s *[custom_data~{tbs.always_clear: true}]
execute if items entity @s inventory.* *[custom_data~{tbs.clear_inventory: true}] run function theblackswitch:v2.0/patch-1/clear_item/inventory_change/nested_execute_0
execute if items entity @s hotbar.* *[custom_data~{tbs.clear_hotbar: true}] run function theblackswitch:v2.0/patch-1/clear_item/inventory_change/nested_execute_1
execute if items entity @s weapon.offhand *[custom_data~{tbs.clear_hotbar: true}] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s armor.head *[custom_data~{tbs.clear_armor: true}] run item replace entity @s armor.head with minecraft:air
execute if items entity @s armor.chest *[custom_data~{tbs.clear_armor: true}] run item replace entity @s armor.chest with minecraft:air
execute if items entity @s armor.legs *[custom_data~{tbs.clear_armor: true}] run item replace entity @s armor.legs with minecraft:air
execute if items entity @s armor.feet *[custom_data~{tbs.clear_armor: true}] run item replace entity @s armor.feet with minecraft:air
execute if items entity @s player.cursor *[custom_data~{tbs.clear_misc: true}] run item replace entity @s player.cursor with minecraft:air
execute if items entity @s player.crafting.0 *[custom_data~{tbs.clear_misc: true}] run item replace entity @s player.crafting.0 with minecraft:air
execute if items entity @s player.crafting.1 *[custom_data~{tbs.clear_misc: true}] run item replace entity @s player.crafting.1 with minecraft:air
execute if items entity @s player.crafting.2 *[custom_data~{tbs.clear_misc: true}] run item replace entity @s player.crafting.2 with minecraft:air
execute if items entity @s player.crafting.3 *[custom_data~{tbs.clear_misc: true}] run item replace entity @s player.crafting.3 with minecraft:air
execute if items entity @s saddle *[custom_data~{tbs.clear_misc: true}] run item replace entity @s saddle with minecraft:air
execute if items entity @s armor.body *[custom_data~{tbs.clear_misc: true}] run item replace entity @s armor.body with minecraft:air
