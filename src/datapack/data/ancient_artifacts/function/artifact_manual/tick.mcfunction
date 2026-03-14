advancement revoke @a only ancient_artifacts:trigger/pickup_artifact

execute if score #10 tbs.slow_tick matches 3 as @a:
    # mainhand
    if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"overworld"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/overworld
    if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"nether"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/nether
    if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"end"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/end
    if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"deep_dark"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/deep_dark
    if items entity @s weapon.mainhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"focus"}] run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/focus

    # offhand
    if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"overworld"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/overworld
    if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"nether"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/nether
    if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"end"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/end
    if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"deep_dark"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/deep_dark
    if items entity @s weapon.offhand written_book[custom_data~{manual:1b,needs_replaced:1b,type:"focus"}] run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/focus

execute as @a if items entity @s weapon.mainhand written_book[custom_data~{manual:1b}] at @s run function ancient_artifacts:artifact_manual/pages/get_data
execute as @a if items entity @s weapon.offhand written_book[custom_data~{manual:1b}] at @s run function ancient_artifacts:artifact_manual/pages/get_data