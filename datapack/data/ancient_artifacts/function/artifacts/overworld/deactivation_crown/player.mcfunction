##Set scores
tag @s remove deactivated
tag @s remove deactivated_1
tag @s remove deactivated_2
tag @s remove deactivated_3

execute if entity @e[tag=deactivator_1,distance=0.01..20] run tag @s add deactivated_1
execute if entity @e[tag=deactivator_2,distance=0.01..20] run tag @s add deactivated_2
execute if entity @e[tag=deactivator_3,distance=0.01..20] run tag @s add deactivated_3

execute if entity @e[tag=deactivator_1,distance=0.01..20] run tag @s add deactivated
execute if entity @e[tag=deactivator_2,distance=0.01..20] run tag @s add deactivated
execute if entity @e[tag=deactivator_3,distance=0.01..20] run tag @s add deactivated

##effects
execute if entity @s[tag=!deact_effects,tag=deactivated] run playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.7
execute if entity @s[tag=!deact_effects,tag=deactivated] run particle minecraft:dust{color:[1.0, 0.4, 0.4],scale:3} ~ ~0.75 ~ 0.8 0 0 0 20
execute if entity @s[tag=!deact_effects,tag=deactivated] run particle minecraft:dust{color:[1.0, 0.4, 0.4],scale:3} ~ ~0.75 ~ 0 0 0.8 0 20
execute if entity @s[tag=!deact_effects,tag=deactivated] run function ancient_artifacts:artifacts/overworld/deactivation_crown/deactivate
execute if entity @s[tag=!deact_effects,tag=deactivated] run function ancient_artifacts:artifact_hotbar/show
execute if entity @s[tag=!deact_effects,tag=deactivated] run tag @s add deact_effects


execute if entity @s[tag=deact_effects,tag=!deactivated] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 1.3
execute if entity @s[tag=deact_effects,tag=!deactivated] run particle minecraft:dust{color:[0.4, 0.612, 1.0],scale:3} ~ ~0.75 ~ 0.8 0 0 0 20
execute if entity @s[tag=deact_effects,tag=!deactivated] run particle minecraft:dust{color:[0.4, 0.612, 1.0],scale:3} ~ ~0.75 ~ 0 0 0.8 0 20
execute if entity @s[tag=deact_effects,tag=!deactivated] run function ancient_artifacts:artifacts/overworld/deactivation_crown/deactivate
execute if entity @s[tag=deact_effects,tag=!deactivated] run function ancient_artifacts:artifact_hotbar/show
execute if entity @s[tag=deact_effects,tag=!deactivated] run tag @s remove deact_effects