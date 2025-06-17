execute if score @s lazer_animation < @s lazer_max run scoreboard players add @s lazer_animation 1
execute if score @s lazer_cooldown matches 1.. unless score @s lazer_animation < @s lazer_max run scoreboard players remove @s lazer_cooldown 1
execute if score .44 slow_tick matches 44 if score @s lazer_cooldown matches 0 run scoreboard players set @s lazer_animation -18
execute if score .44 slow_tick matches 44 if score @s lazer_cooldown matches 0 store result score @s lazer_max run random value 5..15
execute if score .44 slow_tick matches 44 if score @s lazer_cooldown matches 0 run scoreboard players operation @s lazer_max *= .44 const
execute if score .44 slow_tick matches 44 unless score @s lazer_cooldown matches 1.. store result score @s lazer_cooldown run random value 1200..1800


execute if score @s lazer_animation < @s lazer_max run effect give @s slowness 1 255 true
execute if score @s lazer_animation matches 0..69 facing entity @p[predicate=ancient_artifacts:survival] eyes run tp @s ~ ~ ~ ~ ~
execute if score @s lazer_animation matches 0 run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 10 0
execute if score @s lazer_animation matches 0 run playsound minecraft:block.respawn_anchor.ambient hostile @a ~ ~ ~ 10 1
execute if score @s lazer_animation matches 0..20 run particle minecraft:portal ~ ~1.35 ~ 0.1 0.1 0.1 2 50 force

execute if score @s lazer_animation matches 0 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-1200,yRot:-6000}
execute if score @s lazer_animation matches 7 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-2400,yRot:-9000}
execute if score @s lazer_animation matches 14 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-3600,yRot:-12000}
execute if score @s lazer_animation matches 21 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-4800,yRot:-15000}
execute if score @s lazer_animation matches 28 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-6000,yRot:-18000}
execute if score @s lazer_animation matches 35 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-7200,yRot:-21000}
execute if score @s lazer_animation matches 42 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-8400,yRot:-24000}
execute if score @s lazer_animation matches 49 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-9600,yRot:-27000}
execute if score @s lazer_animation matches 56 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-12000,yRot:-30000}

execute if score @s lazer_animation matches 0 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:1200,yRot:-6000}
execute if score @s lazer_animation matches 7 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:2400,yRot:-9000}
execute if score @s lazer_animation matches 14 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:3600,yRot:-12000}
execute if score @s lazer_animation matches 21 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:4800,yRot:-15000}
execute if score @s lazer_animation matches 28 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:6000,yRot:-18000}
execute if score @s lazer_animation matches 35 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:7200,yRot:-21000}
execute if score @s lazer_animation matches 42 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:8400,yRot:-24000}
execute if score @s lazer_animation matches 49 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:9600,yRot:-27000}
execute if score @s lazer_animation matches 56 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:12000,yRot:-30000}

execute if score @s lazer_animation matches 70 run playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 10 1
execute if score @s lazer_animation matches 70 run playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 5 2
execute if score @s lazer_animation matches 70 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 0.8
execute if score @s lazer_animation matches 70 run playsound ancient_artifacts:entity.artifact_golem.lazer.start hostile @a ~ ~ ~ 5 1
execute if score @s lazer_animation matches 70 run particle minecraft:firework ~ ~1.35 ~ 0 0 0 0.3 100
execute if score @s lazer_animation matches 70 run particle minecraft:dust{color:[0.494,0.176,0.835],scale:3} ~ ~1.35 ~ 0.2 0.2 0.2 0 10
execute if score @s lazer_animation matches 70 positioned 0.0 0.0 0.0 rotated ~ 35 run summon marker ^ ^ ^-0.5 {Tags:[ag_lazer_knockback]}
execute if score @s lazer_animation matches 70 run data modify entity @s Motion set from entity @e[tag=ag_lazer_knockback,limit=1] Pos
execute if score @s lazer_animation matches 70.. if score @s lazer_animation < @s lazer_max run scoreboard players operation .1 temp = @s lazer_max
execute if score @s lazer_animation matches 70.. if score @s lazer_animation < @s lazer_max run scoreboard players remove .1 temp 45
execute if score @s lazer_animation matches 70.. if score @s lazer_animation < @s lazer_max run scoreboard players set @s lazer_limit 0
execute if score @s lazer_animation matches 69.. if score @s lazer_animation > .1 temp if score @s lazer_animation < @s lazer_max facing entity @p feet positioned ~ ~1 ~ run function ancient_artifacts:artifact_golem/attacks/shoot_lazer {sound:'ancient_artifacts:entity.artifact_golem.lazer.stop'}
execute if score @s lazer_animation matches 69.. if score @s lazer_animation < @s lazer_max unless score @s lazer_animation > .1 temp facing entity @p feet positioned ~ ~1 ~ run function ancient_artifacts:artifact_golem/attacks/shoot_lazer {sound:'ancient_artifacts:entity.artifact_golem.lazer.loop'}
execute if score @s lazer_animation matches 80.. if score @s lazer_animation < @s lazer_max facing entity @p eyes run tp @s ~ ~ ~ ~ ~

kill @e[tag=ag_lazer_knockback]

