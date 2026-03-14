function ancient_artifacts:artifact_cauldron/recipes/particle/generic_item
execute as @n[type=item, dy=0, nbt={Item: {components: {"minecraft:custom_data": {artifact_template: true}}}}] run function ancient_artifacts:artifact_cauldron/recipes/process_item
scoreboard players set @s current_recipe 20
data modify storage ancient_artifacts:item template set from entity @s data.Items[-1]
execute if data storage ancient_artifacts:item {template: {components: {"minecraft:custom_data": {level: 1b}}}} run data modify entity @s data.craft.level set value "common"
execute if data storage ancient_artifacts:item {template: {components: {"minecraft:custom_data": {level: 2b}}}} run data modify entity @s data.craft.level set value "uncommon"
execute if data storage ancient_artifacts:item {template: {components: {"minecraft:custom_data": {level: 3b}}}} run data modify entity @s data.craft.level set value "rare"
execute if data storage ancient_artifacts:item {template: {components: {"minecraft:custom_data": {level: 4b}}}} run data modify entity @s data.craft.level set value "unique"
execute if data entity @s {data: {craft: {level: "common"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] R 110
execute if data entity @s {data: {craft: {level: "common"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] G 110
execute if data entity @s {data: {craft: {level: "common"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] B 110
execute if data entity @s {data: {craft: {level: "uncommon"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] R 128
execute if data entity @s {data: {craft: {level: "uncommon"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] G 128
execute if data entity @s {data: {craft: {level: "uncommon"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] B 255
execute if data entity @s {data: {craft: {level: "rare"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] R 200
execute if data entity @s {data: {craft: {level: "rare"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] G 70
execute if data entity @s {data: {craft: {level: "rare"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] B 255
execute if data entity @s {data: {craft: {level: "unique"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] R 255
execute if data entity @s {data: {craft: {level: "unique"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] G 163
execute if data entity @s {data: {craft: {level: "unique"}}} run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] B 15
scoreboard players add @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] level 2
