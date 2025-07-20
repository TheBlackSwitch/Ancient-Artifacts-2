##add icon count
scoreboard players add .icon_count temp 1

##Map to frame count
scoreboard players operation .frame temp = @s sonic_cooldown

scoreboard players set .frame_count temp 15
scoreboard players set .value_max temp 2400
execute if entity @s[tag=focused] run scoreboard players set .value_max temp 1200

scoreboard players operation .frame temp *= .frame_count temp
scoreboard players operation .frame temp /= .value_max temp

execute if score @s sonic_cooldown matches 2401.. run scoreboard players set .frame temp 0

##Draw right frame
execute if score .frame temp matches 14.. run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0062","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 13 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0063","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 12 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0064","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 11 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0065","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 10 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0066","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 9 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0067","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 8 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0068","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 7 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0069","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 6 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0070","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 5 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0071","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 4 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0072","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 3 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0073","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 2 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0074","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 1 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0075","font":"ancient_artifacts:artifact_hud"}'
execute if score .frame temp matches 0 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0076","font":"ancient_artifacts:artifact_hud"}'
