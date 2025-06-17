##Check If TileEntity
execute store success score .1 temp run data get block ~ ~ ~
##Smelt Item (only if no TileEntity)
data modify storage ancient_artifacts:item smelt set from entity @s Item.id
execute unless score .1 temp matches 1 align xyz run item modify entity @s container.0 {"function":"furnace_smelt"}

execute store success score .no_smelt temp run data modify storage ancient_artifacts:item smelt set from entity @s Item.id
execute if score .no_smelt temp matches 1 run scoreboard players add @s blocks_smelted 1
tag @s add smelted

