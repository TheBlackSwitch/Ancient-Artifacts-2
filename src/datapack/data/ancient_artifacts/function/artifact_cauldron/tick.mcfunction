##Ticks
execute as @e[type=marker,tag=artifact_cauldron,tag=control] at @s run function ancient_artifacts:artifact_cauldron/control
execute if score #3 tbs.slow_tick matches 3 as @e[tag=artifact_cauldron_place] at @s align xyz run function ancient_artifacts:artifact_cauldron/place
execute as @e[tag=fluid] run function ancient_artifacts:artifact_cauldron/fluid/tick

##Item particles
execute at @e[tag=smoking] run particle minecraft:smoke ~ ~0.3 ~

execute at @e[tag=recycled,tag=common] run particle entity_effect{color:[0.8, 0.8, 0.8, 1.0]} ~ ~0.3 ~ 0 0 0 1 1 force
execute at @e[tag=recycled,tag=uncommon] run particle entity_effect{color:[0.5, 0.5, 1.0, 1.0]} ~ ~0.3 ~ 0 0 0 1 1 force
execute at @e[tag=recycled,tag=rare] run particle entity_effect{color:[0.788, 0.302, 0.98, 1.0]} ~ ~0.3 ~ 0 0 0 1 1 force
execute at @e[tag=recycled,tag=unique] run particle entity_effect{color:[1.0, 0.584, 0.0, 1.0]} ~ ~0.3 ~ 0 0 0 1 1 force

execute if score #3 tbs.slow_tick = #3 tbs.random_delay at @e[tag=crafted] run particle end_rod ~ ~0.3 ~ 0 0 0 0.1 3 force

##Artifact Waste effect
execute as @a at @s run function ancient_artifacts:artifact_cauldron/waste_effect

##allow shears to shear an artifact_cauldron
execute as @a[predicate=ancient_artifacts:holding_normal_shears] run item modify entity @s weapon.mainhand ancient_artifacts:make_usable
execute as @a[scores={using_shears=1..}] run scoreboard players remove @s using_shears 1