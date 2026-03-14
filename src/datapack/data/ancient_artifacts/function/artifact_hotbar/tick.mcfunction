##show artifact hotbar
execute as @a[predicate=ancient_artifacts:holding_artifact] if score @s slow_tick_hotbar matches 0 at @s run function ancient_artifacts:artifact_hotbar/show
execute if score #20 tbs.slow_tick matches 3 as @a[scores={always_show_hotbar=1..}] run function ancient_artifacts:artifact_hotbar/show

scoreboard players set @a[predicate=!ancient_artifacts:holding_artifact] slow_tick_hotbar 0
scoreboard players add @a[predicate=ancient_artifacts:holding_artifact] slow_tick_hotbar 1
execute as @a[predicate=ancient_artifacts:holding_artifact,scores={slow_tick_hotbar=20..}] run scoreboard players set @s slow_tick_hotbar 0

##trigger on artifact use
execute if score #3 tbs.slow_tick matches 3 as @a[scores={used_artifact=1..},predicate=ancient_artifacts:holding_artifact] run function ancient_artifacts:artifact_hotbar/activate
execute if score #3 tbs.slow_tick matches 3 run scoreboard players set @a used_artifact 0

##Activate Animation
execute as @e[type=item_display,tag=artifact_activate_particles] at @s run tp @s ~ ~0.13 ~ ~15 ~
execute as @e[type=item_display,tag=artifact_activate_particles,nbt={Rotation:[360f]}] at @s run kill @s

#common
execute at @e[type=item_display,tag=artifact_activate_particles,tag=common] run particle minecraft:dust{color:[0.557, 0.557, 0.557],scale:1} ^ ^ ^-1 0.1 0.1 0.1 0 5 force
execute at @e[type=item_display,tag=artifact_activate_particles,tag=common] run particle minecraft:dust{color:[0.557, 0.557, 0.557],scale:1} ^ ^ ^1 0.1 0.1 0.1 0 5 force
#uncommon
execute at @e[type=item_display,tag=artifact_activate_particles,tag=uncommon] run particle minecraft:dust{color:[0.316, 0.345, 0.859],scale:1} ^ ^ ^-1 0.1 0.1 0.1 0 5 force
execute at @e[type=item_display,tag=artifact_activate_particles,tag=uncommon] run particle minecraft:dust{color:[0.316, 0.345, 0.859],scale:1} ^ ^ ^1 0.1 0.1 0.1 0 5 force
#rare
execute at @e[type=item_display,tag=artifact_activate_particles,tag=rare] run particle minecraft:dust{color:[0.788, 0.302, 0.98],scale:1} ^ ^ ^-1 0.1 0.1 0.1 0 5 force
execute at @e[type=item_display,tag=artifact_activate_particles,tag=rare] run particle minecraft:dust{color:[0.788, 0.302, 0.98],scale:1} ^ ^ ^1 0.1 0.1 0.1 0 5 force
#expensive
execute at @e[type=item_display,tag=artifact_activate_particles,tag=expensive] run particle minecraft:dust{color:[0.502, 0.902, 1.0],scale:1} ^ ^ ^-1 0.1 0.1 0.1 0 5 force
execute at @e[type=item_display,tag=artifact_activate_particles,tag=expensive] run particle minecraft:dust{color:[0.502, 0.902, 1.0],scale:1} ^ ^ ^1 0.1 0.1 0.1 0 5 force
#unique
execute at @e[type=item_display,tag=artifact_activate_particles,tag=unique] run particle minecraft:dust{color:[1.0, 0.584, 0.0],scale:1} ^ ^ ^-1 0.1 0.1 0.1 0 5 force
execute at @e[type=item_display,tag=artifact_activate_particles,tag=unique] run particle minecraft:dust{color:[1.0, 0.584, 0.0],scale:1} ^ ^ ^1 0.1 0.1 0.1 0 5 force
#divine
execute at @e[type=item_display,tag=artifact_activate_particles,tag=divine] run particle minecraft:dust{color:[1.0, 0.584, 0.0],scale:1} ^ ^ ^-1.5 0.1 0.1 0.1 0 5 force
execute at @e[type=item_display,tag=artifact_activate_particles,tag=divine] run particle minecraft:dust{color:[1.0, 0.584, 0.0],scale:1} ^ ^ ^1.5 0.1 0.1 0.1 0 5 force
execute at @e[type=item_display,tag=artifact_activate_particles,tag=divine] run particle minecraft:dust{color:[1.0, 0.0, 0.6509],scale:1} ^ ^ ^-1 0.1 0.1 0.1 0 5 force
execute at @e[type=item_display,tag=artifact_activate_particles,tag=divine] run particle minecraft:dust{color:[1.0, 0.0, 0.6509],scale:1} ^ ^ ^1 0.1 0.1 0.1 0 5 force

##artifact Count
execute as @a[scores={artifact_slot_count=2}] run scoreboard players set @s artifact_slot_3 0

