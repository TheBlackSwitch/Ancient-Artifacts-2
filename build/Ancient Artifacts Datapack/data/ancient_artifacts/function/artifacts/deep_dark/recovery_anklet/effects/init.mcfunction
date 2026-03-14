summon item_display ~ ~ ~ {Tags: ["recovery_effect"], Rotation: [0.0f, 0.0f]}
summon item_display ~ ~ ~ {Tags: ["recovery_effect"], Rotation: [180.0f, 0.0f]}
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.9 0
playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1
playsound minecraft:block.trial_spawner.spawn_item_begin player @a ~ ~ ~ 1 0.7
tag @s remove recovered_item
