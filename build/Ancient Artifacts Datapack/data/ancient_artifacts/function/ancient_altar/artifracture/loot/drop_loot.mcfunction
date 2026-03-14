execute store result score .level temp run data get entity @s data.Item.components."minecraft:custom_data".data.level
execute if data entity @s {data: {Item: {components: {"minecraft:custom_data": {data: {rarity: 1b}}}}}} run loot spawn ~ ~0.2 ~ loot ancient_artifacts:destroy_loot/common
execute if data entity @s {data: {Item: {components: {"minecraft:custom_data": {data: {rarity: 2b}}}}}} run loot spawn ~ ~0.2 ~ loot ancient_artifacts:destroy_loot/uncommon
execute if data entity @s {data: {Item: {components: {"minecraft:custom_data": {data: {rarity: 3b}}}}}} run loot spawn ~ ~0.2 ~ loot ancient_artifacts:destroy_loot/rare
execute if data entity @s {data: {Item: {components: {"minecraft:custom_data": {data: {rarity: 4b}}}}}} run loot spawn ~ ~0.2 ~ loot ancient_artifacts:destroy_loot/unique
execute if data entity @s {data: {Item: {components: {"minecraft:custom_data": {data: {rarity: 5b}}}}}} run loot spawn ~ ~0.2 ~ loot ancient_artifacts:destroy_loot/unique
execute store result score .2 temp run random value 1..2
execute if score .2 temp matches 1 run function ancient_artifacts:ancient_altar/artifracture/loot/get_relic with entity @s data.Item.components."minecraft:custom_data".data
data remove entity @s data.Item
