function ancient_artifacts:artifact_cauldron/recipes/particle/generic_item
execute as @n[type=item, dy=0, nbt={Item: {components: {"minecraft:custom_data": {artifact_essence: true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/process_item
data modify storage ancient_artifacts:item essence set from entity @s data.Items[-1]
execute store result score .loot_chance temp run data get entity @s data.chances.loot
execute store result score .common_chance temp run data get entity @s data.chances.common
execute store result score .uncommon_chance temp run data get entity @s data.chances.uncommon
execute store result score .rare_chance temp run data get entity @s data.chances.rare
execute store result score .unique_chance temp run data get entity @s data.chances.unique
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 1b}}}} run scoreboard players add .common_chance temp 7
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 1b}}}} run scoreboard players add .uncommon_chance temp 1
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 1b}}}} run function ancient_artifacts:artifact_cauldron/fluid/modify_color {R: -19, G: -15, B: -29}
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 2b}}}} run scoreboard players add .common_chance temp 2
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 2b}}}} run scoreboard players add .uncommon_chance temp 7
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 2b}}}} run scoreboard players add .rare_chance temp 1
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 2b}}}} run function ancient_artifacts:artifact_cauldron/fluid/modify_color {R: -16, G: -12, B: 0}
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 3b}}}} run scoreboard players add .uncommon_chance temp 2
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 3b}}}} run scoreboard players add .rare_chance temp 7
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 3b}}}} run scoreboard players add .unique_chance temp 1
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 3b}}}} run function ancient_artifacts:artifact_cauldron/fluid/modify_color {R: -1, G: -22, B: 0}
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 4b}}}} run scoreboard players add .uncommon_chance temp 1
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 4b}}}} run scoreboard players add .rare_chance temp 2
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 4b}}}} run scoreboard players add .unique_chance temp 7
execute if data storage ancient_artifacts:item {essence: {components: {"minecraft:custom_data": {level: 4b}}}} run function ancient_artifacts:artifact_cauldron/fluid/modify_color {R: 9, G: -7, B: -51}
scoreboard players remove .loot_chance temp 1
execute align xyz run scoreboard players add @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] level 1
execute store result entity @s data.chances.loot byte 1 run scoreboard players get .loot_chance temp
execute store result entity @s data.chances.common byte 1 run scoreboard players get .common_chance temp
execute store result entity @s data.chances.uncommon byte 1 run scoreboard players get .uncommon_chance temp
execute store result entity @s data.chances.rare byte 1 run scoreboard players get .rare_chance temp
execute store result entity @s data.chances.unique byte 1 run scoreboard players get .unique_chance temp
function ancient_artifacts:artifact_cauldron/recipes/recycling/calc_percent
scoreboard players add @s essences 1
scoreboard players operation @s current_recipe = @s essences
scoreboard players add @s current_recipe 11
