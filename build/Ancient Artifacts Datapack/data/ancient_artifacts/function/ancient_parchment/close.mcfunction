playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 1.2
playsound minecraft:item.book.put player @a
execute if score @s parchment_slot matches 0 run item modify entity @s hotbar.0 ancient_artifacts:parchment/close
execute if score @s parchment_slot matches 1 run item modify entity @s hotbar.1 ancient_artifacts:parchment/close
execute if score @s parchment_slot matches 2 run item modify entity @s hotbar.2 ancient_artifacts:parchment/close
execute if score @s parchment_slot matches 3 run item modify entity @s hotbar.3 ancient_artifacts:parchment/close
execute if score @s parchment_slot matches 4 run item modify entity @s hotbar.4 ancient_artifacts:parchment/close
execute if score @s parchment_slot matches 5 run item modify entity @s hotbar.5 ancient_artifacts:parchment/close
execute if score @s parchment_slot matches 6 run item modify entity @s hotbar.6 ancient_artifacts:parchment/close
execute if score @s parchment_slot matches 7 run item modify entity @s hotbar.7 ancient_artifacts:parchment/close
execute if score @s parchment_slot matches 8 run item modify entity @s hotbar.8 ancient_artifacts:parchment/close
title @s actionbar {text: ""}
data merge storage theblackswitch:overlay {id: "ancient_artifacts:parchment_darken"}
function #theblackswitch:v2.0/overlay/remove
effect clear @s slowness
scoreboard players set @s parchment_open 0
execute if predicate ancient_artifacts:holding_artifact run function ancient_artifacts:artifact_hotbar/show
execute if score @s always_show_hotbar matches 1 run function ancient_artifacts:artifact_hotbar/show
