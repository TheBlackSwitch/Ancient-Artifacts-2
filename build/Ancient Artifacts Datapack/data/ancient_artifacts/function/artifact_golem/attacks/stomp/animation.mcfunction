scoreboard players remove @s stomp_animation 1
execute if score @s stomp_animation matches 96 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.13052619222005157d, 0.0d, 0.0d, 0.9914448613738104d]}
execute if score @s stomp_animation matches 96 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.13052619222005157d, 0.0d, 0.0d, 0.9914448613738104d]}
execute if score @s stomp_animation matches 92 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.25881904510252074d, 0.0d, 0.0d, 0.9659258262890683d]}
execute if score @s stomp_animation matches 92 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.25881904510252074d, 0.0d, 0.0d, 0.9659258262890683d]}
execute if score @s stomp_animation matches 88 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.3826834323650898d, 0.0d, 0.0d, 0.9238795325112867d]}
execute if score @s stomp_animation matches 88 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.3826834323650898d, 0.0d, 0.0d, 0.9238795325112867d]}
execute if score @s stomp_animation matches 84 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.49999999999999994d, 0.0d, 0.0d, 0.8660254037844387d]}
execute if score @s stomp_animation matches 84 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.49999999999999994d, 0.0d, 0.0d, 0.8660254037844387d]}
execute if score @s stomp_animation matches 80 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.6087614290087207d, 0.0d, 0.0d, 0.7933533402912352d]}
execute if score @s stomp_animation matches 80 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.6087614290087207d, 0.0d, 0.0d, 0.7933533402912352d]}
execute if score @s stomp_animation matches 76 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.7071067811865476d, 0.0d, 0.0d, 0.7071067811865475d]}
execute if score @s stomp_animation matches 76 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.7071067811865476d, 0.0d, 0.0d, 0.7071067811865475d]}
execute if score @s stomp_animation matches 72 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.793353340291235d, 0.0d, 0.0d, 0.6087614290087208d]}
execute if score @s stomp_animation matches 72 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.793353340291235d, 0.0d, 0.0d, 0.6087614290087208d]}
execute if score @s stomp_animation matches 68 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.8660254037844386d, 0.0d, 0.0d, 0.5000000000000001d]}
execute if score @s stomp_animation matches 68 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.8660254037844386d, 0.0d, 0.0d, 0.5000000000000001d]}
execute if score @s stomp_animation matches 61.. run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.4 0.7 0.4 0.01 3
execute if score @s stomp_animation matches 60 run function ancient_artifacts:artifact_golem/attacks/stomp/animation/nested_execute_0
execute if score @s stomp_animation matches 59 rotated 0 0 run function ancient_artifacts:artifact_golem/attacks/stomp/animation/nested_execute_1
