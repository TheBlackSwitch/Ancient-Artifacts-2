advancement revoke @a only ancient_artifacts:trigger/pickup_artifact
execute if score .10 slow_tick matches 3 as @a if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"overworld"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/overworld
execute if score .10 slow_tick matches 4 as @a if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"nether"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/nether
execute if score .10 slow_tick matches 5 as @a if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"end"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/end
execute if score .10 slow_tick matches 6 as @a if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"deep_dark"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/deep_dark
execute if score .10 slow_tick matches 7 as @a if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"focus"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/focus

execute if score .10 slow_tick matches 3 as @a if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"overworld"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/overworld
execute if score .10 slow_tick matches 4 as @a if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"nether"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/nether
execute if score .10 slow_tick matches 5 as @a if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"end"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/end
execute if score .10 slow_tick matches 6 as @a if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"deep_dark"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/deep_dark
execute if score .10 slow_tick matches 7 as @a if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"focus"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/focus

execute as @a if items entity @s weapon.mainhand written_book[custom_data~{manual:1b}] at @s run function ancient_artifacts:artifact_manual/pages/get_data
execute as @a if items entity @s weapon.offhand written_book[custom_data~{manual:1b}] at @s run function ancient_artifacts:artifact_manual/pages/get_data

##prevInv reset
execute as @a if score @s death matches 1.. run function ancient_artifacts:artifact_manual/reset_prev_inv