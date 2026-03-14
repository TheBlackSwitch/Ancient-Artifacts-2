
import ancient_artifacts:transform_helper as t

#-------------------------------------------------------
## The ectual animation
#-------------------------------------------------------

scoreboard players operation #search golemID = @s golemID

scoreboard players set #-1 temp -1
scoreboard players set #2 temp 2

execute if score @s motionX matches ..0 run scoreboard players operation @s motionX *= #-1 temp
execute if score @s motionZ matches ..0 run scoreboard players operation @s motionZ *= #-1 temp

scoreboard players operation @s motionX += @s motionZ
scoreboard players operation @s motionX /= #2 temp

execute if score @s motionX matches 15.. run scoreboard players operation @s walk_animation += @s motionX
execute unless score @s motionX matches 15.. if score @s walk_animation matches 0.. run scoreboard players remove @s walk_animation 100

#-------------------------------------------------------
## Leg animation frames
#-------------------------------------------------------

execute if score @s walk_animation matches ..0 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(0, 0, 0)}
execute if score @s walk_animation matches ..0 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(0, 0, 0)}

for i in range(3):
    execute if score @s walk_animation matches (i * 100 + 1, i * 100 + 100) on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(0, 0, 0, 45, 0, 0, i / 3)}
    execute if score @s walk_animation matches (i * 100 + 1, i * 100 + 100) on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(0, 0, 0, -45, 0, 0, i / 3)}

for i in range(3):
    execute if score @s walk_animation matches (i * 100 + 301, i * 100 + 400) on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(30, 0, 0, 0, 0, 0, i / 3)}
    execute if score @s walk_animation matches (i * 100 + 301, i * 100 + 400) on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-30, 0, 0, 0, 0, 0, i / 3)}

for i in range(3):
    execute if score @s walk_animation matches (i * 100 + 601, i * 100 + 700) on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-15, 0, 0, -45, 0, 0, i / 3)}
    execute if score @s walk_animation matches (i * 100 + 601, i * 100 + 700) on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(15, 0, 0, 45, 0, 0, i / 3)}

for i in range(3):
    execute if score @s walk_animation matches (i * 100 + 901, i * 100 + 1000) on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-30, 0, 0, 0, 0, 0, i / 3)}
    execute if score @s walk_animation matches (i * 100 + 901, i * 100 + 1000) on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(30, 0, 0, 0, 0, 0, i / 3)}

#-------------------------------------------------------
## Arms
#-------------------------------------------------------

execute unless entity @s[tag=no_arms_walking_animation]:

    for i in range(3):
        execute if score @s walk_animation matches (i * 100 + 1, i * 100 + 100) on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(0, 0, 0, -15, 0, 0, i / 3)}
        execute if score @s walk_animation matches (i * 100 + 1, i * 100 + 100) on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(0, 0, 0, 15, 0, 0, i / 3)}

    for i in range(3):
        execute if score @s walk_animation matches (i * 100 + 301, i * 100 + 400) on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-10, 0, 0, 0, 0, 0, i / 3)}
        execute if score @s walk_animation matches (i * 100 + 301, i * 100 + 400) on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(10, 0, 0, 0, 0, 0, i / 3)}

    for i in range(3):
        execute if score @s walk_animation matches (i * 100 + 601, i * 100 + 700) on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(5, 0, 0, 15, 0, 0, i / 3)}
        execute if score @s walk_animation matches (i * 100 + 601, i * 100 + 700) on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-5, 0, 0, -15, 0, 0, i / 3)}

    for i in range(3):
        execute if score @s walk_animation matches (i * 100 + 901, i * 100 + 1000) on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(10, 0, 0, 0, 0, 0, i / 3)}
        execute if score @s walk_animation matches (i * 100 + 901, i * 100 + 1000) on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-10, 0, 0, 0, 0, 0, i / 3)}

#-------------------------------------------------------
## Particles + SFX
#-------------------------------------------------------

execute unless score @s walk_animation matches 600.. run scoreboard players set @s walk_sound 0
execute unless score @s walk_sound matches 1.. if score @s walk_animation matches 600.. run playsound block.netherite_block.place hostile @a ~ ~ ~ 2 0.6
execute unless score @s walk_sound matches 1.. if score @s walk_animation matches 600.. run playsound entity.iron_golem.step hostile @a ~ ~ ~ 2 0.8
execute if score @s walk_animation matches 600.. run scoreboard players set @s walk_sound 1

execute if score @s walk_animation matches 1200.. run playsound block.netherite_block.place hostile @a ~ ~ ~ 1 0.6
execute if score @s walk_animation matches 1200.. run playsound entity.iron_golem.step hostile @a ~ ~ ~ 1 0.8

execute if score @s walk_animation matches 1200.. run scoreboard players set @s walk_animation 0




