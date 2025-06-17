scoreboard players add @s attack_animation 1

##animation
#left
execute if score @s attack_side matches 1 if score @s attack_animation matches 0 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:5000,yRot:11250}
execute if score @s attack_side matches 1 if score @s attack_animation matches 2 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:10000,yRot:22500}
execute if score @s attack_side matches 1 if score @s attack_animation matches 4 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:15000,yRot:33750}
execute if score @s attack_side matches 1 if score @s attack_animation matches 6 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:20000,yRot:45000}

execute if score @s attack_side matches 1 if score @s attack_animation matches 7 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:22500,yRot:13750}
execute if score @s attack_side matches 1 if score @s attack_animation matches 8 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:25000,yRot:-17500}
execute if score @s attack_side matches 1 if score @s attack_animation matches 9 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:30000,yRot:-80000}

execute if score @s attack_side matches 1 if score @s attack_animation matches 10 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:22500,yRot:-60000}
execute if score @s attack_side matches 1 if score @s attack_animation matches 12 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:15000,yRot:-40000}
execute if score @s attack_side matches 1 if score @s attack_animation matches 14 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:7500,yRot:-20000}
execute if score @s attack_side matches 1 if score @s attack_animation matches 16 as @e[tag=artifact_golem,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}
#right
execute unless score @s attack_side matches 1 if score @s attack_animation matches 0 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-5000,yRot:11250}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 2 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-10000,yRot:22500}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 4 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-15000,yRot:33750}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 6 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-20000,yRot:45000}

execute unless score @s attack_side matches 1 if score @s attack_animation matches 7 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-22500,yRot:13750}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 8 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-25000,yRot:-17500}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 9 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-30000,yRot:-80000}

execute unless score @s attack_side matches 1 if score @s attack_animation matches 10 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-22500,yRot:-60000}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 12 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-15000,yRot:-40000}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 14 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-7500,yRot:-20000}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 16 as @e[tag=artifact_golem,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}

execute if score @s attack_animation matches 17.. unless score @s attack_side matches 1 run scoreboard players set @s attack_side 2
execute if score @s attack_animation matches 17.. if score @s attack_side matches 1 run scoreboard players set @s attack_side 0
execute if score @s attack_side matches 2 run scoreboard players set @s attack_side 1

##Sound And Particles
execute if score @s attack_animation matches 8 run function ancient_artifacts:rand_pitch {ID:'minecraft:block.anvil.land',source:'hostile',target:'@a',pos:'~ ~ ~',vol:0.1,minVol:0,range:'65..75'}
execute if score @s attack_animation matches 8 run playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 1 1
execute if score @s attack_animation matches 8 run playsound minecraft:block.netherite_block.place hostile @a ~ ~ ~ 2 0
execute if score @s attack_animation matches 8 run playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 0.5 0.7


##damage
execute positioned ^ ^1.5 ^2 if score @s attack_animation matches 8 as @a[distance=..3] run damage @s 10 ancient_artifacts:artifact_golem by @e[tag=artifact_golem,tag=center,limit=1,sort=nearest]

execute if score @s attack_animation matches 17.. run scoreboard players set @s attack_animation 0