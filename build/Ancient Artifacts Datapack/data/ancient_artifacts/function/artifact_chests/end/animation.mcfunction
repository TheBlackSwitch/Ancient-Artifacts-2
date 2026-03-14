execute if score @s animation matches 60 run function ancient_artifacts:artifact_chests/end/animation/nested_execute_0
execute if score @s animation matches 44 run function ancient_artifacts:artifact_chests/end/animation/nested_execute_1
execute if score @s animation matches 43 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_2"]}}
execute if score @s animation matches 42 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_3"]}}
execute if score @s animation matches 41 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_4"]}}
execute if score @s animation matches 40 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_5"]}}
execute if score @s animation matches 31..34 on target run function ancient_artifacts:artifact_chests/drop_loot_end {loot_table: "ancient_artifacts:dungeon_loot/end"}
execute if score @s animation matches 30 on target run function ancient_artifacts:artifact_chests/end/animation/nested_execute_2
execute if score @s animation matches 22 run playsound minecraft:block.ender_chest.close block @a ~ ~ ~ 1 0.8
execute if score @s animation matches 20 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_4"]}}
execute if score @s animation matches 19 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_3"]}}
execute if score @s animation matches 18 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_2"]}}
execute if score @s animation matches 17 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_1"]}}
execute if score @s animation matches 16 run item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["close_2"]}}
execute if score @s animation matches 0.. run scoreboard players remove @s animation 1
