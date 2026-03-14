scoreboard players set @n[type=text_display, tag=fluid, dy=0] R 0
scoreboard players set @n[type=text_display, tag=fluid, dy=0] G 0
scoreboard players set @n[type=text_display, tag=fluid, dy=0] B 0
playsound block.fire.extinguish block @a
data remove entity @s data.Items
tag @s add failing
scoreboard players set @s current_recipe -1
scoreboard players set @s animation 100
kill @e[type=item, dy=0]
