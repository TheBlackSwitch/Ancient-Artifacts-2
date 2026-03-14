execute if score @s animation matches 15 run data merge entity @s {transformation: {translation: [0.0d, 0.0d, 0.0d], left_rotation: [0.0d, 0.0d, 0.0d, 1.0d], right_rotation: [0.0d, 0.0d, 0.0d, 1.0d], scale: [1.0d, 1.0d, 1.0d]}, start_interpolation: 0, interpolation_duration: 5}
scoreboard players remove @s animation 1
