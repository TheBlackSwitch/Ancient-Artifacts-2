tag @s add opened
particle minecraft:dust{color: [1.0d, 0.0d, 1.0d], scale: 2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
particle minecraft:trial_spawner_detection ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force
playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1
item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["active"]}}
