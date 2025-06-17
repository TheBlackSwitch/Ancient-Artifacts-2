## Detect recovery anklet
execute unless entity @s[tag=recovery] run return 1

#------------
#  Get Data
#------------

scoreboard players operation .search tbs.ID = @s tbs.ID
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{recovery:true}}},Age:0s},distance=..2] run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/get_item_data

execute if entity @s[tag=recovery_xp] store result score @s recovered_xp run data get entity @s XpLevel
execute if entity @s[tag=recovery_xp] run kill @e[type=experience_orb,distance=..2]

#--------------
#  Kill Items
#--------------

# Normal Items
data modify storage ancient_artifacts:player recover_inv set from storage ancient_artifacts:player recovery_inv
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/loop

data remove storage ancient_artifacts:player current_item

# Equipment
data modify storage ancient_artifacts:player current_item set from storage ancient_artifacts:player recovery_equip.head
execute unless data storage ancient_artifacts:player current_item.components run data modify storage ancient_artifacts:player current_item.components set value {}
execute if data storage ancient_artifacts:player recovery_equip.head run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/kill with storage ancient_artifacts:player current_item

data modify storage ancient_artifacts:player current_item set from storage ancient_artifacts:player recovery_equip.chest
execute unless data storage ancient_artifacts:player current_item.components run data modify storage ancient_artifacts:player current_item.components set value {}
execute if data storage ancient_artifacts:player recovery_equip.chest run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/kill with storage ancient_artifacts:player current_item

data modify storage ancient_artifacts:player current_item set from storage ancient_artifacts:player recovery_equip.legs
execute unless data storage ancient_artifacts:player current_item.components run data modify storage ancient_artifacts:player current_item.components set value {}
execute if data storage ancient_artifacts:player recovery_equip.legs run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/kill with storage ancient_artifacts:player current_item

data modify storage ancient_artifacts:player current_item set from storage ancient_artifacts:player recovery_equip.feet
execute unless data storage ancient_artifacts:player current_item.components run data modify storage ancient_artifacts:player current_item.components set value {}
execute if data storage ancient_artifacts:player recovery_equip.feet run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/kill with storage ancient_artifacts:player current_item

execute if entity @s[tag=recovery_2] run data modify storage ancient_artifacts:player current_item set from storage ancient_artifacts:player recovery_equip.offhand
execute if entity @s[tag=recovery_2] unless data storage ancient_artifacts:player current_item.components run data modify storage ancient_artifacts:player current_item.components set value {}
execute if entity @s[tag=recovery_2] if data storage ancient_artifacts:player recovery_equip.offhand run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/kill with storage ancient_artifacts:player current_item


tag @s add recover_inv
