scoreboard players set #entity_count temp 0
execute store result score #entity_count temp if entity @e[type=item_display, distance=..10, tag=sculk_heart, tag=center]
execute if score #entity_count temp matches 2.. run kill
tag @s add multiple_checked
