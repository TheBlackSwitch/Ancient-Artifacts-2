execute if entity @s[tag=bulk_1] run scoreboard players set .bulk temp 14
execute if entity @s[tag=bulk_2] run scoreboard players set .bulk temp 31
execute if entity @s[tag=bulk_3] run scoreboard players set .bulk temp 48
execute if entity @s[tag=bulk_1] run function ancient_artifacts:utilities/add_item_damage {damage: 14}
execute if entity @s[tag=bulk_2] run function ancient_artifacts:utilities/add_item_damage {damage: 31}
execute if entity @s[tag=bulk_3] run function ancient_artifacts:utilities/add_item_damage {damage: 48}
data modify storage ancient_artifacts:block id set from entity @n[type=item, dy=0, scores={age=..1}, tag=!checked_bulk] Item.id
execute as @n[type=item, dy=0, scores={age=..1}, tag=!checked_bulk] run function ancient_artifacts:artifacts/deep_dark/bulky_chain/block_groups
tag @s add first_bulk
execute align xyz run function ancient_artifacts:artifacts/deep_dark/bulky_chain/break with storage ancient_artifacts:block
kill @e[type=marker, tag=bulk]
