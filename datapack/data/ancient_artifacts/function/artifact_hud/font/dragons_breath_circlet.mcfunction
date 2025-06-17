##add icon count
scoreboard players add .icon_count temp 1

##Map to frame count
scoreboard players operation .frame temp = @s breath_power

scoreboard players set .frame_count temp 10
scoreboard players set .value_max temp 2400

scoreboard players operation .frame temp *= .frame_count temp
scoreboard players operation .frame temp /= .value_max temp


##Draw right frame
execute if score .frame temp matches 0 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0092","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 1 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0093","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 2 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0094","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 3 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0095","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 4 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0096","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 5 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0097","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 6 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0098","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 7 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0099","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 8 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0100","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 9 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0101","font":"minecraft:artifact_hud"}'
execute if score .frame temp matches 10 run data modify storage ancient_artifacts:hud text append value '{"text":"\\u0102","font":"minecraft:artifact_hud"}'
