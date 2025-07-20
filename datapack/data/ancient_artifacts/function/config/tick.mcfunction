scoreboard players enable @s aa.config

##Score inits
execute unless score @s always_show_hotbar matches 0.. run scoreboard players set @s always_show_hotbar 0
execute unless score @s hide_artifact_hud matches 0.. run scoreboard players set @s hide_artifact_hud 0
execute unless score @s storing_circlet_particles matches 0.. run scoreboard players set @s storing_circlet_particles 1

##Config trigger
execute if score @s aa.config matches 4560001 run function ancient_artifacts:config/always_show_hotbar
execute if score @s aa.config matches 4560002 run function ancient_artifacts:config/hide_artifact_hud
execute if score @s aa.config matches 4560003 run function ancient_artifacts:config/storing_circlet_particles
execute if score @s aa.config matches 1.. run function ancient_artifacts:config/config
