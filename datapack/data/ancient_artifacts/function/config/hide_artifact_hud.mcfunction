
##SFX
execute if score @s hide_artifact_hud matches 1 run execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~ 1 1.0
execute if score @s hide_artifact_hud matches 0 run execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~ 1 1.3

##Toggle
execute if score @s hide_artifact_hud matches 1 run return run scoreboard players set @s hide_artifact_hud 0

##Remove bossbar on disable
execute store result storage ancient_artifacts:hud playertbs.ID int 1.0 run scoreboard players get @s tbs.ID
function ancient_artifacts:artifact_hud/bossbar/remove with storage ancient_artifacts:hud

##Toggle
execute if score @s hide_artifact_hud matches 0 run return run scoreboard players set @s hide_artifact_hud 1



