execute if score @s animation matches 35 run function ancient_artifacts:artifact_chests/obsidian/animation/nested_execute_0
execute if score @s animation matches 19 run function ancient_artifacts:artifact_chests/obsidian/animation/nested_execute_1
execute if score @s animation matches 18 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_2"]}}
execute if score @s animation matches 17 run function ancient_artifacts:artifact_chests/obsidian/animation/nested_execute_2
execute if score @s animation matches 16 run function ancient_artifacts:artifact_chests/obsidian/animation/nested_execute_3
execute if score @s animation matches 15 run function ancient_artifacts:artifact_chests/obsidian/animation/nested_execute_4
execute if score @s animation matches 14 run data merge entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], scale: [1.0f, 1.0f, 1.0f]}, start_interpolation: 0, interpolation_duration: 1}
execute if score @s animation matches 5..9 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table: "ancient_artifacts:dungeon_loot/overworld"}
execute if score @s animation matches 3..4 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table: "ancient_artifacts:dungeon_loot/overworld_luck"}
execute if score @s animation matches 0..1 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table: "ancient_artifacts:dungeon_loot/artifacts_all"}
execute if score @s animation matches 0 run function ancient_artifacts:artifact_chests/obsidian/animation/nested_execute_5
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1
