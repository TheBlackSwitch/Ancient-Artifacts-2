execute store result score .slot temp run data get storage ancient_artifacts:player current_item.Slot 1
execute unless data storage ancient_artifacts:player current_item.Slot run scoreboard players set .slot temp -1

execute if entity @s[tag=recovery_4] run return 1
execute if entity @s[tag=recovery_3] if data storage ancient_artifacts:player {current_item:{components:{"minecraft:custom_data":{artifact:true}}}} run return 1
execute if entity @s[tag=recovery_2] if score .slot temp matches 0..8 run return 1
return fail