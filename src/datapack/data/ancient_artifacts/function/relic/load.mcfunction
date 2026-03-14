
execute in overworld unless loaded 0 0 0 run return run schedule function ancient_artifacts:relic/load 1t append

scoreboard players set .relics_overworld server 0
scoreboard players set .relics_nether server 0
scoreboard players set .relics_end server 0
scoreboard players set .relics_deep_dark server 0

execute unless data storage ancient_artifacts:relics {generated:1b} run data modify storage ancient_artifacts:relics overworld set value {type:"overworld"}
execute unless data storage ancient_artifacts:relics {generated:1b} run data modify storage ancient_artifacts:relics nether set value {type:"nether"}
execute unless data storage ancient_artifacts:relics {generated:1b} run data modify storage ancient_artifacts:relics end set value {type:"end"}
execute unless data storage ancient_artifacts:relics {generated:1b} run data modify storage ancient_artifacts:relics deep_dark set value {type:"deep_dark"}
execute unless data storage ancient_artifacts:relics {generated:1b} run data remove storage ancient_artifacts:relics all

execute unless data storage ancient_artifacts:relics {generated:1b} run function ancient_artifacts:relic/generate