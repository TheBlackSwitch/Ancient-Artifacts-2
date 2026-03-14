execute if score @s lazer_cooldown matches 1.. unless score @s lazer_animation < @s lazer_max run scoreboard players remove @s lazer_cooldown 1
execute if score #44 tbs.slow_tick matches 44 if score @s lazer_cooldown matches 0 run function ancient_artifacts:artifact_golem/attacks/lazer/trigger/nested_execute_0
execute if score #44 tbs.slow_tick matches 44 unless score @s lazer_cooldown matches 1.. store result score @s lazer_cooldown run random value 1200..1800
