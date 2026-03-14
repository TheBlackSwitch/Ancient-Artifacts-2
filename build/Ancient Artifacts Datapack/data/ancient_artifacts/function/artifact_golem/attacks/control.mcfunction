execute if score #20 tbs.slow_tick matches 4 run function ancient_artifacts:artifact_golem/attacks/control/nested_execute_0
execute if score #5 tbs.slow_tick matches 2 run function ancient_artifacts:artifact_golem/attacks/control/nested_execute_1
tag @s remove no_arms_walking_animation
execute if entity @s[tag=meele] run tag @s add no_arms_walking_animation
execute if score @s stomp_animation matches 1.. run tag @s add no_arms_walking_animation
execute if score @s lazer_animation < @s lazer_max run tag @s add no_arms_walking_animation
execute if score @s attack_type matches ..1 if score @s stomp_animation matches 1.. run scoreboard players set @s attack_type 2
execute if score @s attack_type matches ..2 if score @s lazer_animation < @s lazer_max run scoreboard players set @s attack_type 3
execute if score @s attack_animation matches 1.. run return run function ancient_artifacts:artifact_golem/attacks/meele
execute if entity @s[tag=meele] run return run function ancient_artifacts:artifact_golem/attacks/meele
execute if score #10 tbs.slow_tick matches 10 if score @s attack_type matches ..1 run attribute @s movement_speed base set 0.25
execute if score #10 tbs.slow_tick matches 10 if score @s attack_type matches 2.. run attribute @s movement_speed base set 0.32
execute if score @s attack_type matches 2..3 unless score @s lazer_animation < @s lazer_max run function ancient_artifacts:artifact_golem/attacks/control/nested_execute_2
execute if score @s attack_type matches 3 unless score @s stomp_animation matches 1.. run function ancient_artifacts:artifact_golem/attacks/control/nested_execute_3
execute if score @s attack_type matches 2..4 run function ancient_artifacts:artifact_golem/attacks/teleport
