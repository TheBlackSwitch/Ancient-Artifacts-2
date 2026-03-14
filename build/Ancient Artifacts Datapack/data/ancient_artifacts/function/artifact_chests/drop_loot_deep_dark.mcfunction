execute store result storage ancient_artifacts:item_motion X double 0.01 run random value -3..3
execute store result storage ancient_artifacts:item_motion Z double 0.01 run random value -3..3
execute store result storage ancient_artifacts:item_motion Y double 0.01 run random value 20..34
summon item ~ ~0.6 ~ {Item: {id: "minecraft:poisonous_potato", count: 1b}, Tags: ["loot_drop"], Motion: [0.0d, 0.05d, 0.0d], NoGravity: 1b}
summon chest_minecart ~ ~1.1 ~ {Tags: ["temp_loot"]}
$loot replace entity @n[type=chest_minecart,tag=temp_loot] container.0 loot $(loot_table)
data modify entity @n[type=item, tag=loot_drop, nbt={Item: {id: "minecraft:poisonous_potato"}}] Item set from entity @e[type=chest_minecart, tag=temp_loot, limit=1] Items[0]
execute store result score .artifact temp if items entity @n[type=chest_minecart, tag=temp_loot] container.0 *[minecraft:custom_data~{artifact: true}]
execute store result score .heavy_upgrade temp if items entity @n[type=chest_minecart, tag=temp_loot] container.0 *[minecraft:custom_data~{artifact_upgrade: true, heavy: true}]
execute if score .heavy_upgrade temp matches 1.. run scoreboard players set @s heavy_upgrade_progress 0
execute unless score .heavy_upgrade temp matches 1.. run scoreboard players add @s heavy_upgrade_progress 1
execute if score .artifact temp matches 1.. run scoreboard players set @s artifact_progress 0
execute unless score .artifact temp matches 1.. run scoreboard players add @s artifact_progress 1
item replace entity @n[type=chest_minecart, tag=temp_loot] container.0 with air
kill @e[type=chest_minecart, tag=temp_loot]
tag @e[type=item, tag=loot_drop] remove loot_drop
execute if score .artifact temp matches 1.. run particle minecraft:dust{color: [1.0d, 0.0d, 1.0d], scale: 3} ~ ~0.5 ~ 0.07 0.2 0.07 0 3 force
execute if score .artifact temp matches 1.. run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1.4
particle minecraft:dust{color: [0.007d, 0.211d, 0.271d], scale: 3} ~ ~0.4 ~ 0.1 0.1 0.1 1 2 force
