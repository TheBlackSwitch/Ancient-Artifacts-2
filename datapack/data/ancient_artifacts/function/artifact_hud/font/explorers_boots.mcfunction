##add icon count
scoreboard players add .icon_count temp 1

##Map to frame count
scoreboard players operation .frame temp = @s explored_chunks

scoreboard players set .frame_count temp 15

execute if entity @s[tag=explorer_1] run scoreboard players set .value_max temp 200
execute if entity @s[tag=explorer_2] run scoreboard players set .value_max temp 150
execute if entity @s[tag=explorer_3] run scoreboard players set .value_max temp 100
execute if entity @s[tag=explorer_4] run scoreboard players set .value_max temp 80

scoreboard players operation .frame temp *= .frame_count temp
scoreboard players operation .frame temp /= .value_max temp

##Draw right frame
execute if score .frame temp matches 0 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0017","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 1 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0018","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 2 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0019","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 3 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0020","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 4 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0021","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 5 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0022","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 6 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0023","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 7 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0024","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 8 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0025","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 9 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0026","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 10 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0027","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 11 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0028","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 12 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0029","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 13 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0030","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 14 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0031","font":"ancient_artifacts:artifact_hud"}'


