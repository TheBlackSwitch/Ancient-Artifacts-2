scoreboard players add .icon_count temp 1
scoreboard players operation .frame temp = @s life_steal_level
scoreboard players set .frame_count temp 15
scoreboard players set .value_max temp 1000
scoreboard players operation .frame temp *= .frame_count temp
scoreboard players operation .frame temp /= .value_max temp
execute if score .frame temp matches 0 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0047","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 1 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0048","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 2 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0049","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 3 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0050","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 4 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0051","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 5 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0052","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 6 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0053","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 7 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0054","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 8 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0055","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 9 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0056","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 10 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0057","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 11 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0058","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 12 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0059","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 13 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0060","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 14 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0061","font":"ancient_artifacts:artifact_hud"}'
