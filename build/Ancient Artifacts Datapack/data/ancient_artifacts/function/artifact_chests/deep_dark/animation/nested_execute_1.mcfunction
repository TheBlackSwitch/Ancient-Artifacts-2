data merge entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.2f, 0.0f], scale: [1.0f, 1.0f, 1.0f]}, start_interpolation: 0, interpolation_duration: 5}
particle block{block_state: "sculk"} ~ ~0.5 ~ 0.3 0 0.3 0 10 force
playsound minecraft:block.sculk_sensor.place block @a ~ ~ ~ 2 0
playsound minecraft:block.sculk_sensor.place block @a ~ ~ ~ 2 2
playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 0.5 1.2
item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_1"]}}
