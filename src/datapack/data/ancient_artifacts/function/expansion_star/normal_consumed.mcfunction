advancement revoke @s only ancient_artifacts:trigger/normal_expansion_star_consumed

# Get the current luck duration
execute store result score #expanded_time temp run data get entity @s active_effects[{id:"minecraft:luck"}].duration
scoreboard players set #20 temp 20
scoreboard players operation #expanded_time temp /= #20 temp

# Add 30 min of luck
execute store result storage ancient_artifacts:temp expanded_time int 1 run scoreboard players add #expanded_time temp 1800

# Apply the new luck effect
function ancient_artifacts:expansion_star/apply_luck with storage ancient_artifacts:temp