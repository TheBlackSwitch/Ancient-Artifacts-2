execute align xyz run kill @e[type=item, dy=0, nbt={Item: {id: "minecraft:cauldron"}}]
loot spawn ~ ~ ~ loot ancient_artifacts:block/artifact_cauldron
execute if data entity @s data.Items run function ancient_artifacts:artifact_cauldron/break/drop_items
kill @e[tag=artifact_cauldron, distance=..0.5]
