scoreboard players enable @s aa.config
function ancient_artifacts:config/init_settings
execute if score @s aa.config matches 0 run return fail
execute if score @s aa.config matches 4560001 run function ancient_artifacts:config/settings/always_show_hotbar
execute if score @s aa.config matches 4560002 run function ancient_artifacts:config/settings/hide_artifact_hud
execute if score @s aa.config matches 4560003 run function ancient_artifacts:config/settings/storing_circlet_particles
execute if score @s aa.config matches 1.. run function ancient_artifacts:config/build
execute if score @s aa.config matches -1 run function ancient_artifacts:config/close
scoreboard players set @s aa.config 0
