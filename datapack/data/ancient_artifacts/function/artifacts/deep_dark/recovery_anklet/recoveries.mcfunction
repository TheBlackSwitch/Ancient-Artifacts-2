execute if score @s inventories_recovered matches 10 run advancement grant @s only ancient_artifacts:artifacts/deep_dark/recovery_expert

execute unless score @s recover_time matches 1.. run scoreboard players set @s inventories_recovered 0
execute if score @s recover_time matches 1.. run scoreboard players remove @s recover_time 1