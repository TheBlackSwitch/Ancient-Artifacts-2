##Artifacts overworld

#travelers boots
execute if predicate ancient_artifacts:travelers_expert_trigger run scoreboard players add @s travel_speed_length 1
execute unless predicate ancient_artifacts:travelers_expert_trigger run scoreboard players set @s travel_speed_length 0
execute if score @s travel_speed_length matches 4.. run advancement grant @s only ancient_artifacts:artifacts/overworld/travelers_expert

#divers boots
execute if entity @s[tag=divers_boots] unless block ~ ~ ~ #ancient_artifacts:water run scoreboard players set @s dive 0
execute if entity @s[tag=divers_boots] if block ~ ~1 ~ air run scoreboard players set @s dive 0
execute unless entity @s[tag=divers_boots] run scoreboard players set @s dive 0

##Artifacts nether

#thermal tiara
execute if score @s fire matches 1 if entity @s[tag=thermal_tiara] run scoreboard players add @s time_on_fire 10
execute if score @s fire matches 0 run scoreboard players set @s time_on_fire 0
execute if score @s time_on_fire matches 6000.. run advancement grant @s only ancient_artifacts:artifacts/nether/thermal_expert
