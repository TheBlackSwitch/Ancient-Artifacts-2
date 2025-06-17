execute if score @s stomp_animation matches 1.. run scoreboard players remove @s stomp_animation 1
execute if score @s stomp_cooldown matches 1.. unless score @s stomp_animation matches 1.. run scoreboard players remove @s stomp_cooldown 1
execute if score @s stomp_cooldown matches 0 run scoreboard players set @s stomp_animation 100
execute unless score @s stomp_cooldown matches 1.. store result score @s stomp_cooldown run random value 1200..2300

execute if score @s stomp_animation matches 100 run effect give @s levitation 2 1 true
execute if score @s stomp_animation matches 100 run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 3 0.8
execute if score @s stomp_animation matches 100 run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 3 0.8

##Move arms
#left
execute if score @s stomp_animation matches 96 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-15000,xRot:0}
execute if score @s stomp_animation matches 92 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-30000,xRot:0}
execute if score @s stomp_animation matches 88 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-45000,xRot:0}
execute if score @s stomp_animation matches 84 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-60000,xRot:0}
execute if score @s stomp_animation matches 80 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-75000,xRot:0}
execute if score @s stomp_animation matches 76 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-90000,xRot:0}
execute if score @s stomp_animation matches 72 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-105000,xRot:0}
execute if score @s stomp_animation matches 68 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-120000,xRot:0}
#right
execute if score @s stomp_animation matches 96 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-15000,xRot:0}
execute if score @s stomp_animation matches 92 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-30000,xRot:0}
execute if score @s stomp_animation matches 88 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-45000,xRot:0}
execute if score @s stomp_animation matches 84 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-60000,xRot:0}
execute if score @s stomp_animation matches 80 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-75000,xRot:0}
execute if score @s stomp_animation matches 76 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-90000,xRot:0}
execute if score @s stomp_animation matches 72 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-105000,xRot:0}
execute if score @s stomp_animation matches 68 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:-120000,xRot:0}

execute if score @s stomp_animation matches 61.. run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.4 0.7 0.4 0.01 3
execute if score @s stomp_animation matches 60 run function ancient_artifacts:artifact_golem/attacks/move_down
execute if score @s stomp_animation matches 60 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 3 0.8
execute if score @s stomp_animation matches 60 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 3 1.5
execute if score @s stomp_animation matches 60 run playsound minecraft:block.trial_spawner.detect_player hostile @a ~ ~ ~ 3 1
execute if score @s stomp_animation matches 60 run playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 3 1.2
execute if score @s stomp_animation matches 60 run playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.7
execute if score @s stomp_animation matches 60 run summon tnt ~ ~2.5 ~ {fuse:0,explosion_power:4}
execute if score @s stomp_animation matches 60 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:0,xRot:0}
execute if score @s stomp_animation matches 60 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {yRot:0,xRot:0}

execute if score @s stomp_animation matches 59 rotated 0 0 run scoreboard players set @s shockwave_distance 0
execute if score @s stomp_animation matches 59 rotated 0 0 run function ancient_artifacts:artifact_golem/attacks/summon_shockwave
