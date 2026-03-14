scoreboard players add .icon_count temp 1
scoreboard players operation .frame temp = @s levitation_power
scoreboard players set .frame_count temp 15
scoreboard players operation .value_max temp = @s levitation_power_max
scoreboard players operation .frame temp *= .frame_count temp
scoreboard players operation .frame temp /= .value_max temp
execute if score .frame temp matches 0 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0077","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 1 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0078","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 2 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0079","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 3 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0080","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 4 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0081","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 5 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0082","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 6 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0083","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 7 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0084","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 8 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0085","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 9 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0086","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 10 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0087","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 11 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0088","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 12 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0089","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 13 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0090","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 14.. run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0091","font":"ancient_artifacts:artifact_hud"}'
