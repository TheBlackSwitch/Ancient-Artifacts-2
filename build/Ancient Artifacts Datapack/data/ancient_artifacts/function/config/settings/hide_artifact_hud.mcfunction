execute if score @s hide_artifact_hud matches 1 at @s run playsound minecraft:block.end_portal_frame.fill ui @a ~ ~ ~ 1 1.3
execute if score @s hide_artifact_hud matches 0 at @s run playsound minecraft:block.end_portal_frame.fill ui @a ~ ~ ~ 1 2
execute if score @s hide_artifact_hud matches 1 run return run scoreboard players set @s hide_artifact_hud 0
execute store result storage ancient_artifacts:hud playerID int 1.0 run scoreboard players get @s tbs.ID
function ancient_artifacts:artifact_hud/bossbar/remove with storage ancient_artifacts:hud
execute if score @s hide_artifact_hud matches 0 run return run scoreboard players set @s hide_artifact_hud 1
