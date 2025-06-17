##Parts
execute as @e[tag=artifact_golem,tag=!center,tag=!spawn_pos] at @s run function ancient_artifacts:artifact_golem/move_parts

##Center
execute as @e[tag=artifact_golem,tag=center] at @s run function ancient_artifacts:artifact_golem/center

##Hitbox
execute as @e[tag=artifact_golem,tag=hitbox] at @s run function ancient_artifacts:artifact_golem/defence/control

##Homing projectiles
execute if score .3 slow_tick matches 3 as @e[tag=homing] at @s run function ancient_artifacts:artifact_golem/defence/homing_projectile
execute at @e[tag=homing] run particle white_smoke ~ ~ ~ 0 0 0 0.05 1 force

##shockwave
execute as @a[scores={shockwave_cooldown=1..}] run scoreboard players remove @s shockwave_cooldown 1
execute as @e[tag=ag_shockwave] at @s run function ancient_artifacts:artifact_golem/attacks/shockwave
execute as @a at @s positioned ~ 0 ~ if entity @e[tag=ag_shockwave,distance=..2] unless score @s shockwave_cooldown matches 1.. at @s run function ancient_artifacts:artifact_golem/attacks/shockwave_effects