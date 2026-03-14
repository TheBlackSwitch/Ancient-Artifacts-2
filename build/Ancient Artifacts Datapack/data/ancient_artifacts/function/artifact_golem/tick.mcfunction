execute as @e[type=minecraft:zombified_piglin, tag=artifact_golem, tag=center] at @s run function ancient_artifacts:artifact_golem/move_parts
execute as @e[type=minecraft:zombified_piglin, tag=artifact_golem, tag=center] at @s run function ancient_artifacts:artifact_golem/center
execute as @e[type=minecraft:interaction, tag=artifact_golem, tag=hitbox] at @s run function ancient_artifacts:artifact_golem/defence/control
execute as @a[scores={shockwave_cooldown=1..}] run scoreboard players remove @s shockwave_cooldown 1
execute if score #5 tbs.slow_tick matches 4 as @e[type=item_display, tag=ag_shockwave] at @s run function ancient_artifacts:artifact_golem/attacks/stomp/shockwave
execute as @a at @s positioned ~ 0 ~ if entity @e[type=item_display, tag=ag_shockwave, distance=..2] unless score @s shockwave_cooldown matches 1.. at @s run function ancient_artifacts:artifact_golem/attacks/stomp/shockwave_effects
