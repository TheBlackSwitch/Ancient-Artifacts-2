execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute if items entity @s container.* *[minecraft:custom_data~{tbs.overlay: {applied: 1b}}] summon minecraft:chest_minecart run function theblackswitch:v2.0/patch-1/overlay/show/reset_item/nested_execute_36
execute if items entity @s weapon.offhand *[minecraft:custom_data~{tbs.overlay: {applied: 1b}}] summon minecraft:chest_minecart run function theblackswitch:v2.0/patch-1/overlay/show/reset_item/nested_execute_37
execute if items entity @s player.cursor *[minecraft:custom_data~{tbs.overlay: {applied: 1b}}] summon minecraft:chest_minecart run function theblackswitch:v2.0/patch-1/overlay/show/reset_item/nested_execute_38
