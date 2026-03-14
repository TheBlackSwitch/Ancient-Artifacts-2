execute if data entity @s {data: {roll: "common"}} run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:artifacts/common
execute if data entity @s {data: {roll: "uncommon"}} run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:artifacts/uncommon
execute if data entity @s {data: {roll: "rare"}} run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:artifacts/rare
execute if data entity @s {data: {roll: "unique"}} run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:artifacts/unique_no_expensive
execute as @e[type=item, dy=0, tag=!not_recycled] run data merge entity @s {Tags: ["recycled"], NoGravity: 1b, PickupDelay: 60}
execute as @e[type=item, dy=0, tag=recycled] run data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
execute if data entity @s {data: {roll: "common"}} run tag @e[type=item, dy=0, tag=recycled] add common
execute if data entity @s {data: {roll: "uncommon"}} run tag @e[type=item, dy=0, tag=recycled] add uncommon
execute if data entity @s {data: {roll: "rare"}} run tag @e[type=item, dy=0, tag=recycled] add rare
execute if data entity @s {data: {roll: "unique"}} run tag @e[type=item, dy=0, tag=recycled] add unique
execute store result storage ancient_artifacts:item rand_motion double 0.001 run random value 20..65
execute as @e[type=item, dy=0, tag=recycled] run function ancient_artifacts:artifact_cauldron/recipes/recycling/edit_motion with storage ancient_artifacts:item
