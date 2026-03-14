execute if score @s animation matches 30 run function ancient_artifacts:artifact_chests/nether/animation/nested_execute_0
execute if score @s animation matches 14 run function ancient_artifacts:artifact_chests/nether/animation/nested_execute_1
execute if score @s animation matches 13 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_2"]}}
execute if score @s animation matches 12 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_3"]}}
execute if score @s animation matches 11 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_4"]}}
execute if score @s animation matches 10 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_5"]}}
execute if score @s animation matches 1..4 on target run function ancient_artifacts:artifact_chests/drop_loot {loot_table: "ancient_artifacts:dungeon_loot/nether"}
execute if score @s animation matches 0 on target run function ancient_artifacts:artifact_chests/nether/animation/nested_execute_2
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1
