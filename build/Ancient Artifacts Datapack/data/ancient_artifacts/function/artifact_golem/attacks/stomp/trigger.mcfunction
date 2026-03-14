execute if score @s stomp_cooldown matches 1.. unless score @s stomp_animation matches 1.. run scoreboard players remove @s stomp_cooldown 1
execute if score @s stomp_cooldown matches 0 run function ancient_artifacts:artifact_golem/attacks/stomp/trigger/nested_execute_0
execute unless score @s stomp_cooldown matches 1.. store result score @s stomp_cooldown run random value 1200..2300
