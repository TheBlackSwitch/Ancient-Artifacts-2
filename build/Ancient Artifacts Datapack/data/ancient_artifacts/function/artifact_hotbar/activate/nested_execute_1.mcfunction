execute if score .1 temp matches 155 at @s run playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 2
execute if score .1 temp matches 155 at @s run playsound ancient_artifacts:entity.artifact_golem.lazer.start master @a ~ ~ ~ 0.6 1.4
execute if score .1 temp matches 155 at @s run playsound block.beacon.power_select master @a ~ ~ ~ 1 0.8
execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~ 0 run function ancient_artifacts:ancient_altar/lightning_particle {length: 100}
execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~30 0 run function ancient_artifacts:ancient_altar/lightning_particle {length: 100}
execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~-30 0 run function ancient_artifacts:ancient_altar/lightning_particle {length: 100}
execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~60 0 run function ancient_artifacts:ancient_altar/lightning_particle {length: 100}
execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~-60 0 run function ancient_artifacts:ancient_altar/lightning_particle {length: 100}
execute at @s run playsound minecraft:item.armor.equip_netherite block @a ~ ~ ~
execute at @s run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 1
execute at @s run summon minecraft:item_display ~ ~ ~ {Tags: ["artifact_activate_particles", "INIT"]}
execute at @s run particle minecraft:firework ~ ~0.75 ~ 0 0 0 0.2 20 normal
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 1}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add common
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 2}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add uncommon
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 3}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add rare
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 4}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add expensive
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 5}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add unique
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 1b}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add common
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 2b}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add uncommon
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 3b}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add rare
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 4b}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add expensive
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 5b}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add unique
execute if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data": {data: {rarity: 6b}}}}}] run tag @e[type=item_display, tag=artifact_activate_particles, tag=INIT] add divine
