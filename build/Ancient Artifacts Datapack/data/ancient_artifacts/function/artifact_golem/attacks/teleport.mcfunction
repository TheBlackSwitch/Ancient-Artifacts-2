execute if score @s tp_cooldown matches 1.. if score @s attack_type matches 2 run scoreboard players remove @s tp_cooldown 1
execute if score @s tp_cooldown matches 1.. if score @s attack_type matches 3 run scoreboard players remove @s tp_cooldown 2
execute if score @s tp_cooldown matches 1.. if score @s attack_type matches 4 run scoreboard players remove @s tp_cooldown 4
execute if score @s tp_cooldown matches 0 run function ancient_artifacts:artifact_golem/attacks/teleport/nested_execute_0
execute unless score @s tp_cooldown matches 1.. store result score @s tp_cooldown run random value 400..2000
