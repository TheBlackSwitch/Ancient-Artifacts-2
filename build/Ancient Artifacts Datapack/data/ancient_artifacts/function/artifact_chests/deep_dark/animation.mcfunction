execute if score @s animation matches 50 run function ancient_artifacts:artifact_chests/deep_dark/animation/nested_execute_0
execute if score @s animation matches 34 run function ancient_artifacts:artifact_chests/deep_dark/animation/nested_execute_1
execute if score @s animation matches 33 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_2"]}}
execute if score @s animation matches 32 run function ancient_artifacts:artifact_chests/deep_dark/animation/nested_execute_2
execute if score @s animation matches 31 run function ancient_artifacts:artifact_chests/deep_dark/animation/nested_execute_3
execute if score @s animation matches 30 run function ancient_artifacts:artifact_chests/deep_dark/animation/nested_execute_4
execute if score @s animation matches 29 run data merge entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], scale: [1.0f, 1.0f, 1.0f]}, start_interpolation: 0, interpolation_duration: 1}
execute if score @s animation matches 25 run playsound minecraft:block.sculk_sensor.clicking block @a ~ ~ ~ 1 0
execute if score @s animation matches 20 run particle minecraft:dust{color: [0.07d, 0.294d, 0.451d], scale: 1} ~ ~ ~ 0.3 0.3 0.3 1 15 force
execute if score @s animation matches 10 run function ancient_artifacts:artifact_chests/deep_dark/animation/nested_execute_5
execute if score @s animation matches 8 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table: "ancient_artifacts:dungeon_loot/deep_dark"}
execute if score @s animation matches 6 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table: "ancient_artifacts:dungeon_loot/deep_dark"}
execute if score @s animation matches 4 on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table: "ancient_artifacts:dungeon_loot/deep_dark"}
execute if score @s animation matches 2 on target run function ancient_artifacts:artifact_chests/deep_dark/animation/nested_execute_6
execute if score @s animation matches 0 on target run function ancient_artifacts:artifact_chests/deep_dark/animation/nested_execute_7
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1
