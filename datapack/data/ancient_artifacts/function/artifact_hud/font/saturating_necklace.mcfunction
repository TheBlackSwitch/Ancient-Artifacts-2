##add icon count
scoreboard players add .icon_count temp 1

##Map to frame count
scoreboard players operation .frame temp = @s saturating_level

scoreboard players set .frame_count temp 15
scoreboard players set .value_max temp 4000

scoreboard players operation .frame temp *= .frame_count temp
scoreboard players operation .frame temp /= .value_max temp

##Draw right frame
execute if score .frame temp matches 0 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0032","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 1 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0033","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 2 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0034","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 3 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0035","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 4 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0036","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 5 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0037","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 6 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0038","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 7 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0039","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 8 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0040","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 9 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0041","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 10 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0042","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 11 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0043","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 12 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0044","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 13 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0045","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 14 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0046","font":"minecraft:artifact_hud"}'
