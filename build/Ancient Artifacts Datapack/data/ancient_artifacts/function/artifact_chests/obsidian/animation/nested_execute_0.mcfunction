execute on target run function ancient_artifacts:advancements/triggers/open_obsidian_chest
tag @s add opened
particle minecraft:dust{color: [1.0d, 0.0d, 1.0d], scale: 2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
particle minecraft:trial_spawner_detection_ominous ~ ~-0.3 ~ 0.4 0.2 0.4 0 15 force
playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.8
execute on target if predicate ancient_artifacts:survival run clear @s amethyst_shard[!custom_data~{smithed: {ignore: {crafting: true}}}, !custom_data~{compound: true}] 1
playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 1
item modify entity @e[type=item_display, tag=artifact_chest, sort=nearest, limit=1] container.0 {function: "set_custom_model_data", strings: {mode: "replace_all", values: ["active_3"]}}
