execute if function ancient_artifacts:__compat__/graves_lullaby/is_enabled run return run function ancient_artifacts:__compat__/graves_lullaby/recovery_anklet/death
execute store result score .keep_inventory temp run function ancient_artifacts:utilities/gamerule/get_keep_inventory
execute if score .keep_inventory temp matches 1 run return fail
execute unless entity @s[tag=recovery] run return 1
tag @s add recover_inv
scoreboard players set #success temp 0
scoreboard players operation #search tbs.ID = @s tbs.ID
execute as @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {recovery: true}}}, Age: 0s}, distance=..2] run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/get_item_data
execute unless score #success temp matches 1 run return run tellraw @s [{text: "Failed to recover inventory!\n", color: "red"}, {text: "Dropped items normally...\n", color: "gold"}, {text: "This is typically caused by an incompatability issue.", color: "white"}]
execute if entity @s[tag=recovery_xp] store result score @s recovered_xp run data get entity @s XpLevel
execute if entity @s[tag=recovery_xp] run kill @e[type=experience_orb, distance=..2]
data modify storage ancient_artifacts:player recover_inv set from storage ancient_artifacts:player recovery_inv
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/loop
data remove storage ancient_artifacts:player current_item
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
