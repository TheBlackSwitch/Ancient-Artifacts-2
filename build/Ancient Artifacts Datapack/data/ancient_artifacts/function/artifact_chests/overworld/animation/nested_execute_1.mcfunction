data merge entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.2f, 0.0f], scale: [1.0f, 1.0f, 1.0f]}, start_interpolation: 0, interpolation_duration: 5}
playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 1.2
item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_1"]}}
