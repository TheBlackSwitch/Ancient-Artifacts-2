##Check If TileEntity
execute store success score .is_tile_entity temp run data get block ~ ~ ~
##Smelt Item (only if no TileEntity)
data modify storage ancient_artifacts:item smelt set from entity @s Item.id
execute if score .is_tile_entity temp matches 0 align xyz run item modify entity @s container.0 {"function":"furnace_smelt"}

# Verify if the item changed after applying 'furnace smelt'
execute store success score .is_smelted temp run data modify storage ancient_artifacts:item smelt set from entity @s Item.id
tag @s add smelted

