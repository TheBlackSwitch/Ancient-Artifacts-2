execute store result score #count temp if entity @e[type=item_display,tag=artifact_chest,dy=0]
execute if score #count temp matches 2.. run kill @s
tag @s add checked