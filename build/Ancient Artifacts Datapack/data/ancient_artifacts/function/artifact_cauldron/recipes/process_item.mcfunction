execute align xyz run data modify entity @n[type=marker, dy=0, tag=artifact_cauldron, tag=control] data.Items append from entity @s Item
execute align xyz run data modify entity @n[type=marker, dy=0, tag=artifact_cauldron, tag=control] data.Items[-1] merge value {count: 1b}
execute store result score .count temp run data get entity @s Item.count
execute store result entity @s Item.count int 1 run scoreboard players remove .count temp 1
execute if score .count temp matches 0 run kill @s
