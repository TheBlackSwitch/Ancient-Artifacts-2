advancement grant @s only ancient_artifacts:main/edit_configs

scoreboard players reset @s aa.config
tellraw @s {"text":"------Ancient Artifacts Config-----","color":"light_purple","bold": true}
execute if score @s always_show_hotbar matches 1 run tellraw @s [{"text":"Always Show Artifact Hotbar: ","color":"yellow"},{"text":"[True]","color":"green","click_event": {"action": "run_command","command": "/trigger aa.config set 4560001"}}]
execute if score @s always_show_hotbar matches 0 run tellraw @s [{"text":"Always Show Artifact Hotbar: ","color":"yellow"},{"text":"[False]","color":"red","click_event": {"action": "run_command","command": "/trigger aa.config set 4560001"}}]

execute if score @s hide_artifact_hud matches 1 run tellraw @s [{"text":"Hide Artifact HUD: ","color":"yellow"},{"text":"[True]","color":"green","click_event": {"action": "run_command","command": "/trigger aa.config set 4560002"}}]
execute if score @s hide_artifact_hud matches 0 run tellraw @s [{"text":"Hide Artifact HUD: ","color":"yellow"},{"text":"[False]","color":"red","click_event": {"action": "run_command","command": "/trigger aa.config set 4560002"}}]

execute if score @s storing_circlet_particles matches 1 run tellraw @s [{"text":"Enable storing circlet particles: ","color":"yellow"},{"text":"[True]","color":"green","click_event": {"action": "run_command","command": "/trigger aa.config set 4560003"}}]
execute if score @s storing_circlet_particles matches 0 run tellraw @s [{"text":"Enable storing circlet particles: ","color":"yellow"},{"text":"[False]","color":"red","click_event": {"action": "run_command","command": "/trigger aa.config set 4560003"}}]
tellraw @s {"text":"--------------------------------","color":"light_purple","bold": true}