advancement revoke @s only ancient_artifacts:trigger/normal_expansion_star_consumed
scoreboard players set .expanded_time temp 0
execute store result score .expanded_time temp run data get entity @s active_effects[{id:"minecraft:luck"}].duration
scoreboard players set .20 temp 20
scoreboard players operation .expanded_time temp /= .20 temp
tellraw @a {score:{name:".expanded_time","objective":"temp"}}
execute store result storage ancient_artifacts:temp expanded_time int 1 run scoreboard players add .expanded_time temp 1800
function ancient_artifacts:expansion_star/apply_luck with storage ancient_artifacts:temp