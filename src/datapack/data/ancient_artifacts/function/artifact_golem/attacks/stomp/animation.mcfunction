scoreboard players remove @s stomp_animation 1
import ancient_artifacts:transform_helper as t

#-------------------------------------------------------
## Animate Arms
#-------------------------------------------------------

# ===== LEFT =====
for i in range(8):
    execute if score @s stomp_animation matches (96 - i * 4) on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-15, 0, 0, -120, 0, 0, i / 7)}
    execute if score @s stomp_animation matches (96 - i * 4) on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-15, 0, 0, -120, 0, 0, i / 7)}


#-------------------------------------------------------
## Particles / SFX
#-------------------------------------------------------

execute if score @s stomp_animation matches 61.. run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.4 0.7 0.4 0.01 3
execute if score @s stomp_animation matches 60:
    function ancient_artifacts:artifact_golem/attacks/stomp/move_down
    playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 3 0.8
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:block.trial_spawner.detect_player hostile @a ~ ~ ~ 3 1
    playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 3 1.2
    playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.7
    summon tnt ~ ~2.5 ~ {fuse:0,explosion_power:4}
    execute as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(0, 0, 0)}
    execute as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(0, 0, 0)}

execute if score @s stomp_animation matches 59 rotated 0 0:
    scoreboard players set @s shockwave_distance 0
    function ancient_artifacts:artifact_golem/attacks/stomp/summon_shockwave
