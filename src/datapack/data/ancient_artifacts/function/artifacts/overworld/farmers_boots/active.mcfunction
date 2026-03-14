execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 38 if score #160 tbs.slow_tick = #160 tbs.random_delay run scoreboard players set @s raycast_limit 0
execute if score @s artifact matches 38 if score #160 tbs.slow_tick = #160 tbs.random_delay run function ancient_artifacts:artifacts/overworld/farmers_boots/find_crop

execute if score @s artifact matches 39 if score #60 tbs.slow_tick = #60 tbs.random_delay run scoreboard players set @s raycast_limit 0
execute if score @s artifact matches 39 if score #60 tbs.slow_tick = #60 tbs.random_delay run function ancient_artifacts:artifacts/overworld/farmers_boots/find_crop