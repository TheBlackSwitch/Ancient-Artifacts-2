##Check if player is looking at a cauldron
scoreboard players set @s raycast_limit 0
execute unless score @s upgrade_type matches 1 anchored eyes run function ancient_artifacts:artifact_upgrade/check_cauldron
execute unless score @s upgrade_type matches 1 if data storage ancient_artifacts:artifact_cauldron found run return 1

##No Artifact In Offhand
execute unless predicate ancient_artifacts:holding_artifact_offhand if score @s upgrade_type matches 1 run tellraw @s {"text": "Hold an artifact in your offhand to upgrade it!", "color": "red"}
execute unless predicate ancient_artifacts:holding_artifact_offhand if score @s upgrade_type matches 0 run tellraw @s {"text": "Hold an artifact in your offhand to upgrade it!\nOr look at a cauldron to upgrade it!", "color": "red"}
execute unless predicate ancient_artifacts:holding_artifact_offhand run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
execute unless predicate ancient_artifacts:holding_artifact_offhand if score @s upgrade_type matches 0 if predicate ancient_artifacts:survival run loot give @s loot ancient_artifacts:item/artifact_upgrade
execute unless predicate ancient_artifacts:holding_artifact_offhand if score @s upgrade_type matches 1 if predicate ancient_artifacts:survival run loot give @s loot ancient_artifacts:item/heavy_artifact_upgrade
execute unless predicate ancient_artifacts:holding_artifact_offhand run return fail

##Get data from artifact
execute store result score .max temp run data get entity @s equipment.offhand.components."minecraft:custom_data".data.max
execute store result score .level temp run data get entity @s equipment.offhand.components."minecraft:custom_data".data.level
execute store result score .start temp run data get entity @s equipment.offhand.components."minecraft:custom_data".data.start
execute store result score .rarity temp run data get entity @s equipment.offhand.components."minecraft:custom_data".data.rarity
data modify storage ancient_artifacts:artifact dim set from entity @s equipment.offhand.components."minecraft:custom_data".data.dim
data modify storage ancient_artifacts:artifact id set from entity @s equipment.offhand.components."minecraft:custom_data".data.id
data modify storage ancient_artifacts:artifact name set from entity @s equipment.offhand.components."minecraft:custom_name"
data modify storage ancient_artifacts:artifact lore set from entity @s equipment.offhand.components."minecraft:lore"

##Fully Upgraded Artifact
execute unless score .level temp < .max temp run tellraw @s {"text": "Your artifact is fully upgraded!", "color": "red"}
execute unless score .level temp < .max temp run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
execute unless score .level temp < .max temp if score @s upgrade_type matches 0 run return run execute unless entity @s[gamemode=creative] run loot give @s loot ancient_artifacts:item/artifact_upgrade
execute unless score .level temp < .max temp if score @s upgrade_type matches 1 run return run execute unless entity @s[gamemode=creative] run loot give @s loot ancient_artifacts:item/heavy_artifact_upgrade

##Require Heavy Upgrade
execute if score @s upgrade_type matches 0 if score .rarity temp matches 4 run tellraw @s {"text": "Your artifact requires a heavy upgrade!", "color": "red"}
execute if score @s upgrade_type matches 0 if score .rarity temp matches 4 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
execute if score @s upgrade_type matches 0 if score .rarity temp matches 4 unless entity @s[gamemode=creative] run return run loot give @s loot ancient_artifacts:item/artifact_upgrade

scoreboard players operation .last_upgrade temp = .max temp
scoreboard players remove .last_upgrade temp 1
execute if score @s upgrade_type matches 0 if score .level temp = .last_upgrade temp run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1.1

function ancient_artifacts:advancements/triggers/upgrade_artifact with storage ancient_artifacts:artifact


##Normal upgrade
execute if score @s upgrade_type matches 0 run function ancient_artifacts:artifact_upgrade/normal

##Heavy upgrade
#full upgrade
execute if score @s upgrade_type matches 1 unless score .rarity temp matches 4 run function ancient_artifacts:artifact_upgrade/heavy
#expensive
execute if score @s upgrade_type matches 1 if score .rarity temp matches 4 run function ancient_artifacts:artifact_upgrade/normal
