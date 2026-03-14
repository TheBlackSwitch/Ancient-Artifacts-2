execute on target if items entity @s weapon.mainhand air run return run data remove entity @s interaction
execute unless data entity @s interaction run return fail
scoreboard players set .wrong temp 0
execute on target unless items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{artifact: true}] run scoreboard players set .wrong temp 1
execute if score .wrong temp matches 1 on target run tellraw @s [{text: "[Lost shulker]: ", color: "yellow"}, {text: "Woops... thats not an artifact!", color: "light_purple"}]
execute if score .wrong temp matches 1 on target run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
execute if score .wrong temp matches 1 run return run data remove entity @s interaction
playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.5 1
playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 1.4
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.1 15
particle minecraft:dust{color: [1.0d, 0.3d, 1.0d], scale: 1} ~ ~0.5 ~ 0.4 0.4 0.4 0 10
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 1b}}] run tag @n[tag=shulker_king] add difficulty_1
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 2b}}] run tag @n[tag=shulker_king] add difficulty_2
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 3b}}] run tag @n[tag=shulker_king] add difficulty_3
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 4b}}] run tag @n[tag=shulker_king] add difficulty_4
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 5b}}] run tag @n[tag=shulker_king] add difficulty_4
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 6b}}] run tag @n[tag=shulker_king] add difficulty_5
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 1b}}] run tag @n[tag=shulker_castle] add difficulty_1
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 2b}}] run tag @n[tag=shulker_castle] add difficulty_2
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 3b}}] run tag @n[tag=shulker_castle] add difficulty_3
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 4b}}] run tag @n[tag=shulker_castle] add difficulty_4
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 5b}}] run tag @n[tag=shulker_castle] add difficulty_4
execute on target if items entity @s weapon.mainhand warped_fungus_on_a_stick[minecraft:custom_data~{data: {rarity: 6b}}] run tag @n[tag=shulker_castle] add difficulty_5
scoreboard players set @n[tag=shulker_king] animation 0
tellraw @a[distance=..64] [{text: "[Lost shulker]: ", color: "yellow"}, {text: "Mwahahahaha", color: "light_purple"}]
tag @n[tag=shulker_king] add artifact_aquired
execute on target run item replace entity @s weapon.mainhand with air
kill @s
