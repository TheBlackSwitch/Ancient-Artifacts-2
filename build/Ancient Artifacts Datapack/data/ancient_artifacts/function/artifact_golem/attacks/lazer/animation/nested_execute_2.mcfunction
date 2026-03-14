function ancient_artifacts:artifact_golem/attacks/lazer/shoot {sound: "ancient_artifacts:entity.artifact_golem.lazer.stop"}
execute on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.0d, 0.0d, 0.0d, 1.0d]}
execute on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.0d, 0.0d, 0.0d, 1.0d]}
