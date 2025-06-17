##add icon count
scoreboard players add .icon_count temp 1

##Map to frame count
scoreboard players operation .frame temp = @s final_shout_cd

scoreboard players set .frame_count temp 12
scoreboard players set .value_max temp 3600

scoreboard players operation .frame temp *= .frame_count temp
scoreboard players operation .frame temp /= .value_max temp

##Draw right frame
execute if score .frame temp matches 12 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0004","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 11 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0005","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 10 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0006","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 9 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0007","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 8 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0008","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 7 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0009","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 6 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0010","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 5 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0011","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 4 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0012","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 3 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0013","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 2 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0014","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 1 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0015","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 0 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0016","font":"minecraft:artifact_hud"}'
