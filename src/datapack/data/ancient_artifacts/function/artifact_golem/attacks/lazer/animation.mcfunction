scoreboard players add @s lazer_animation 1

import ancient_artifacts:transform_helper as t

#-------------------------------------------------------
## Animation
#-------------------------------------------------------

execute if score @s lazer_animation < @s lazer_max run effect give @s slowness 1 255 true
execute if score @s lazer_animation matches 0..69 facing entity @p[predicate=ancient_artifacts:survival] eyes run tp @s ~ ~ ~ ~ 0
execute if score @s lazer_animation matches 0 run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 10 0
execute if score @s lazer_animation matches 0 run playsound minecraft:block.respawn_anchor.ambient hostile @a ~ ~ ~ 10 1
execute if score @s lazer_animation matches 0..20 run particle minecraft:portal ~ ~1.35 ~ 0.1 0.1 0.1 2 50 force

for i in range(18):
    execute if score @s lazer_animation matches (i * 3) on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(0, 0, 0, -30, 30, 0, i / 17)}
    execute if score @s lazer_animation matches (i * 3) on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(0, 0, 0, -30, -30, 0, i / 17)}

execute if score @s lazer_animation matches 70:
    playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 10 1
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 5 2
    playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 0.8
    playsound ancient_artifacts:entity.artifact_golem.lazer.start hostile @a ~ ~ ~ 5 1
    particle minecraft:firework ~ ~1.35 ~ 0 0 0 0.3 100
    particle minecraft:dust{color:[0.494,0.176,0.835],scale:3} ~ ~1.35 ~ 0.2 0.2 0.2 0 10
    execute in overworld positioned 0.0 0.0 0.0 rotated ~ 35 run summon marker ^ ^ ^-0.5 {Tags:[ag_lazer_knockback]}
    data modify entity @s Motion set from entity @e[type=marker,tag=ag_lazer_knockback,limit=1] Pos

execute if score @s lazer_animation matches 70.. if score @s lazer_animation < @s lazer_max:
    scoreboard players operation .1 temp = @s lazer_max
    scoreboard players remove .1 temp 45
    scoreboard players set @s lazer_limit 0

execute if score @s lazer_animation matches 69.. if score @s lazer_animation > .1 temp if score @s lazer_animation < @s lazer_max facing entity @p feet positioned ~ ~1 ~:
    function ancient_artifacts:artifact_golem/attacks/lazer/shoot {sound:'ancient_artifacts:entity.artifact_golem.lazer.stop'}
    execute on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(0, 0, 0)}
    execute on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(0, 0, 0)}


execute if score @s lazer_animation matches 69.. if score @s lazer_animation < @s lazer_max unless score @s lazer_animation > .1 temp facing entity @p feet positioned ~ ~1 ~ run function ancient_artifacts:artifact_golem/attacks/lazer/shoot {sound:'ancient_artifacts:entity.artifact_golem.lazer.loop'}
execute if score @s lazer_animation matches 80.. if score @s lazer_animation < @s lazer_max facing entity @p eyes run tp @s ~ ~ ~ ~ 0

kill @e[type=marker,tag=ag_lazer_knockback]

