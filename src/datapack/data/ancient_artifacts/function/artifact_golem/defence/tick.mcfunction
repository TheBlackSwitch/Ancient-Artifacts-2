# homing projectiles
execute at @e[type=interaction,tag=artifact_golem] positioned ~ ~1 ~ as @e[type=#ancient_artifacts:projectile,tag=!ag_homing_checked,distance=..3.5] at @s run function ancient_artifacts:artifact_golem/defence/projectile

execute if score #3 tbs.slow_tick matches 3 as @e[type=#ancient_artifacts:projectile,tag=homing] at @s run function ancient_artifacts:artifact_golem/defence/homing_projectile
execute at @e[type=#ancient_artifacts:projectile,tag=homing] run particle white_smoke ~ ~ ~ 0 0 0 0.05 1 force