function ancient_artifacts:artifact_golem/attacks/stomp/move_down
playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 3 0.8
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 3 1.5
playsound minecraft:block.trial_spawner.detect_player hostile @a ~ ~ ~ 3 1
playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 3 1.2
playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.7
summon tnt ~ ~2.5 ~ {fuse: 0, explosion_power: 4}
execute as @e[tag=artifact_golem, tag=arm_l, limit=1, sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.0d, 0.0d, 0.0d, 1.0d]}
execute as @e[tag=artifact_golem, tag=arm_r, limit=1, sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.0d, 0.0d, 0.0d, 1.0d]}
