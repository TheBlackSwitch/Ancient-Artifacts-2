playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 0.8
playsound minecraft:block.shulker_box.open block @a ~ ~ ~ 1 0.8
item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["open_1"]}}
