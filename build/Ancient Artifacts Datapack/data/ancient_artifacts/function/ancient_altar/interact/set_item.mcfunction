data modify entity @e[tag=ancient_altar, tag=control, limit=1, sort=nearest] data.Item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air
playsound block.enchantment_table.use block @a ~ ~ ~ 1 2
execute as @e[tag=ancient_altar, tag=interact, dy=0] run data remove entity @s interaction
