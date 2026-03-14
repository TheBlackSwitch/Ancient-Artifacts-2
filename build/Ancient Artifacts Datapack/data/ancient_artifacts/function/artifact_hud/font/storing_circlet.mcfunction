scoreboard players add .icon_count temp 1
execute if score @s extra_inv_open matches 0 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0116","font":"ancient_artifacts:artifact_hud"}'
execute if score @s extra_inv_open matches 1 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0117","font":"ancient_artifacts:artifact_hud"}'
