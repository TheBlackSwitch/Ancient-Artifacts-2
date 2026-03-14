

# Sound effects
playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 1.2
playsound minecraft:item.book.put player @a

# Close the item texture
for i in range(9):
    execute if score @s parchment_slot matches i run item modify entity @s f'hotbar.{i}' ancient_artifacts:parchment/close


# Clear the parchment overlays and all effects
title @s actionbar {"text": ""}

data merge storage theblackswitch:overlay {"id":"ancient_artifacts:parchment_darken"}
function #theblackswitch:__version__/overlay/remove

effect clear @s slowness

# mark the parchment as closed
scoreboard players set @s parchment_open 0

# Show the artifact hotbar again
execute if predicate ancient_artifacts:holding_artifact run function ancient_artifacts:artifact_hotbar/show
execute if score @s always_show_hotbar matches 1 run function ancient_artifacts:artifact_hotbar/show