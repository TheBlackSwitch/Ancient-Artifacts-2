execute at @s run function ancient_artifacts:artifacts/end/storing_circlet/check_item_drop
data remove storage ancient_artifacts:player storing_circlet_gui
data modify storage ancient_artifacts:player storing_circlet_gui append from entity @s Inventory[{id: "minecraft:gunpowder", components: {"minecraft:custom_data": {storing_circlet_gui: 1b}}}]
data remove storage ancient_artifacts:player storing_circlet_gui[{Slot: 35b}]
execute if data storage ancient_artifacts:player storing_circlet_gui[] run clear @s gunpowder[custom_data~{storing_circlet_gui: true}]
function ancient_artifacts:artifacts/end/storing_circlet/fill_gui/icon
