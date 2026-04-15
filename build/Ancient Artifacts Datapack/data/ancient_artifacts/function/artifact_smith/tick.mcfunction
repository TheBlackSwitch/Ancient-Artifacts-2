execute if score #3 tbs.slow_tick matches 3 as @e[type=villager, tag=!checked, tag=!artifact_smith, nbt={VillagerData: {profession: "minecraft:leatherworker", level: 1}}] run function ancient_artifacts:artifact_smith/update_smith
execute if score #3 tbs.slow_tick matches 3 as @e[type=villager, tag=checked, nbt={VillagerData: {profession: "minecraft:none"}}] run tag @s remove checked
execute as @e[type=villager, tag=artifact_smith] at @s run function ancient_artifacts:artifact_smith/run
execute if score #3 tbs.slow_tick matches 3 as @e[type=villager, tag=artifact_smith, nbt={VillagerData: {profession: "minecraft:none"}}, tag=!reset] at @s run function ancient_artifacts:artifact_smith/reset
execute as @e[type=zombie_villager, name="Artifact Smith"] at @s run function ancient_artifacts:artifact_smith/reset_zombie
execute store result score .time temp run function ancient_artifacts:artifact_smith/query_daytime
execute if score .time temp matches ..10 as @e[type=villager, tag=artifact_smith] at @s run function ancient_artifacts:artifact_smith/update_artifacts
execute if score .time temp matches ..10 run time add 10
