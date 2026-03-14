tag @s add smithed.entity
tag @s add smithed.strict
execute if score #40 tbs.slow_tick matches 1 as @e[type=item_display, tag=sculk_heart, distance=..5] run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}, interpolation_duration: 2, start_interpolation: 0}
execute if score #40 tbs.slow_tick matches 1 run playsound minecraft:entity.warden.heartbeat block @a ~ ~ ~ 8 0.6
execute if score #40 tbs.slow_tick matches 3 as @e[type=item_display, tag=sculk_heart, distance=..5] run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 1.25f], translation: [0.0f, 0.0f, 0.0f]}, interpolation_duration: 20, start_interpolation: 0}
execute if score #20 tbs.slow_tick matches 2 if entity @a[distance=..5, gamemode=!spectator] run function ancient_artifacts:sculk_heart/heart/animation/nested_execute_0
execute if entity @s[tag=player_detected] run function ancient_artifacts:sculk_heart/heart/animation/nested_execute_3
