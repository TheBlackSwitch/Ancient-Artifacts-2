
execute at @s run function ancient_artifacts:artifacts/end/storing_circlet/check_item_drop

data remove storage ancient_artifacts:player storing_circlet_gui
data modify storage ancient_artifacts:player storing_circlet_gui append from entity @s Inventory[{id:"minecraft:gunpowder",components:{"minecraft:custom_data":{"storing_circlet_gui":1b}}}]
data remove storage ancient_artifacts:player storing_circlet_gui[{Slot:35b}]

execute if data storage ancient_artifacts:player storing_circlet_gui[] run clear @s gunpowder[custom_data~{storing_circlet_gui:true}]

execute unless items entity @s container.26 gunpowder[custom_data~{storing_circlet_gui:true}] run function ancient_artifacts:artifacts/end/storing_circlet/fill_gui/icon

execute if entity @s[tag=storing_circlet_6] run return fail

item replace entity @s inventory.25 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.21 with air

execute if entity @s[tag=storing_circlet_5] run return fail

item replace entity @s inventory.20 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.16 with air

execute if entity @s[tag=storing_circlet_4] run return fail

item replace entity @s inventory.15 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.12 with air

execute if entity @s[tag=storing_circlet_3] run return fail

item replace entity @s inventory.11 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.8 with air

execute if entity @s[tag=storing_circlet_2] run return fail

item replace entity @s inventory.7 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.4 with air
