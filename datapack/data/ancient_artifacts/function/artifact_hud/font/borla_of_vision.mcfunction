##add icon count
scoreboard players add .icon_count temp 1

##Map to frame count
scoreboard players operation .frame temp = @s night_vision_timer

scoreboard players set .frame_count temp 12
scoreboard players operation .value_max temp = @s night_vision_max

scoreboard players operation .frame temp *= .frame_count temp
scoreboard players operation .frame temp /= .value_max temp


##Draw right frame
execute if score .frame temp matches 12 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0103","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 11 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0104","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 10 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0105","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 9 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0106","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 8 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0107","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 7 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0108","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 6 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0109","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 5 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0110","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 4 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0111","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 3 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0112","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 2 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0113","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 1 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0114","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 0 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0115","font":"minecraft:artifact_hud"}'
