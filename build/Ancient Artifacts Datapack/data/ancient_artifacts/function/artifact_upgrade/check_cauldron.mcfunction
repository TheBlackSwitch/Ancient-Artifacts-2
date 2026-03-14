execute unless score @s raycast_limit matches 1.. run data remove storage ancient_artifacts:artifact_cauldron found
execute if block ~ ~ ~ #cauldrons align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=artifact_cauldron, distance=..0.1] run summon marker ~ ~ ~ {Tags: ["cauldron_location"]}
execute if block ~ ~ ~ #cauldrons align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=artifact_cauldron, distance=..0.1] run data modify storage ancient_artifacts:artifact_cauldron found set value 1b
execute if block ~ ~ ~ #cauldrons align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=artifact_cauldron, distance=..0.1] unless predicate ancient_artifacts:holding_artifact_offhand run data modify storage ancient_artifacts:artifact_cauldron found set value 0b
execute if block ~ ~ ~ #cauldrons align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=artifact_cauldron, distance=..0.1] unless predicate ancient_artifacts:holding_artifact_offhand run tellraw @s {text: "Your cauldron is already upgraded!", color: "red"}
execute if block ~ ~ ~ #cauldrons align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=artifact_cauldron, distance=..0.1] unless predicate ancient_artifacts:holding_artifact_offhand unless entity @s[gamemode=creative] run loot give @s loot ancient_artifacts:item/artifact_upgrade
execute if block ~ ~ ~ #cauldrons align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=artifact_cauldron, distance=..0.1] unless predicate ancient_artifacts:holding_artifact_offhand at @s run playsound block.note_block.didgeridoo master @a ~ ~ ~ 1 0.7
execute if block ~ ~ ~ #cauldrons align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=artifact_cauldron, distance=..0.1] as @e[tag=cauldron_location, limit=1, sort=nearest] run data modify storage ancient_artifacts:artifact_cauldron Pos set from entity @s Pos
execute if block ~ ~ ~ #cauldrons align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=artifact_cauldron, distance=..0.1] align xyz run function ancient_artifacts:artifact_cauldron/upgrade with storage ancient_artifacts:artifact_cauldron
execute if block ~ ~ ~ #cauldrons align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=cauldron_location]
scoreboard players add @s raycast_limit 1
execute unless block ~ ~ ~ #cauldrons unless score @s raycast_limit matches 50.. positioned ^ ^ ^0.1 run function ancient_artifacts:artifact_upgrade/check_cauldron
