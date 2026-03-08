

import ancient_artifacts:transform_helper as t

#-------------------------------------------------------
## The ectual animation
#-------------------------------------------------------
scoreboard players add @s attack_animation 1

# ===== LEFT ARM =====

execute if score @s attack_side matches 1 if score @s attack_animation matches 0 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-5, -11.25, 0)}
execute if score @s attack_side matches 1 if score @s attack_animation matches 2 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-10, -22.5, 0)}
execute if score @s attack_side matches 1 if score @s attack_animation matches 4 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-15, -33.75, 0)}
execute if score @s attack_side matches 1 if score @s attack_animation matches 6 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-20, -45, 0)}

execute if score @s attack_side matches 1 if score @s attack_animation matches 7 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-22.5, -13.75, 0)}
execute if score @s attack_side matches 1 if score @s attack_animation matches 8 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-25, 17.500, 0)}
execute if score @s attack_side matches 1 if score @s attack_animation matches 9 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-30, 80, 0)}

execute if score @s attack_side matches 1 if score @s attack_animation matches 10 on passengers if entity @s[tag=arm_l] at @s:
    particle minecraft:crit ^0.7 ^-1 ^0.4 0.2 0.2 0.2 0.1 20
    particle minecraft:electric_spark ^0.7 ^-1 ^0.4 0.2 0.2 0.2 0.1 2

execute if score @s attack_side matches 1 if score @s attack_animation matches 10 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-22.5, 60, 0)}
execute if score @s attack_side matches 1 if score @s attack_animation matches 12 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-15, 40, 0)}
execute if score @s attack_side matches 1 if score @s attack_animation matches 14 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-7.5, 20, 0)}
execute if score @s attack_side matches 1 if score @s attack_animation matches 16 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(0, 0, 0)}

# ===== RIGHT ARM =====

execute unless score @s attack_side matches 1 if score @s attack_animation matches 0 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-5, 11.25, 0)}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 2 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-10, 22.5, 0)}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 4 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-15, 33.75, 0)}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 6 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-20, 45, 0)}

execute unless score @s attack_side matches 1 if score @s attack_animation matches 7 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-22.500, 13.75, 0)}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 8 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-25, -17.5, 0)}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 9 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-30, -80, 0)}

execute unless score @s attack_side matches 1 if score @s attack_animation matches 10 on passengers if entity @s[tag=arm_r] at @s:
    particle minecraft:crit ^-0.7 ^-1 ^0.4 0.2 0.2 0.2 0.1 20
    particle minecraft:electric_spark ^-0.7 ^-1 ^0.4 0.2 0.2 0.2 0.1 2

execute unless score @s attack_side matches 1 if score @s attack_animation matches 10 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-22.5, -60, 0)}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 12 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-15, -40, 0)}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 14 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-7.5, -20, 0)}
execute unless score @s attack_side matches 1 if score @s attack_animation matches 16 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(0, 0, 0)}

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