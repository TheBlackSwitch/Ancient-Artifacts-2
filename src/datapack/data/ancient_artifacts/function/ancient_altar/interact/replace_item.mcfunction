##Get current item on altar
summon chest_minecart ~ ~ ~ {Tags:[altar_retrieve]}
data modify entity @e[tag=altar_retrieve,limit=1] Items append from entity @e[tag=ancient_altar,tag=control,limit=1,sort=nearest] data.Item

##Replace item from hand
data modify entity @e[tag=ancient_altar,tag=control,limit=1,sort=nearest] data.Item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air

##Replace Hand with prev altar item
item replace entity @s weapon.mainhand from entity @e[tag=altar_retrieve,limit=1] container.0

##resets
data remove entity @e[tag=altar_retrieve,limit=1] Items
kill @e[tag=altar_retrieve]
execute as @e[tag=ancient_altar,tag=interact,dy=0] run data remove entity @s interaction

##Playsound
playsound block.beacon.power_select block @a ~ ~ ~ 0.5 2
playsound item.armor.equip_leather block @a ~ ~ ~ 1 1
playsound block.enchantment_table.use block @a ~ ~ ~ 1 2
