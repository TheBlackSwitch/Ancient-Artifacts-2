execute as @e[type=item_display, tag=pulse, tag=!animated] run data merge entity @s {start_interpolation: 1, transformation: {scale: [0.01f, 1.0f, 0.01f]}}
tag @e[type=item_display, tag=pulse] add animated
