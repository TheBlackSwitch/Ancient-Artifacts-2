scoreboard players add @s animation 1
particle dust{color: [0.3d, 1.0d, 0.3d], scale: 2} ^ ^ ^1 0.0 0.0 0.0 0 1 force
particle firework ^ ^ ^1 0.0 0.0 0.0 0.05 1 force
tp @s ~ ~0.1 ~ ~20 ~
particle trial_spawner_detection ~ ~-0.2 ~ 0.3 0.3 0.3 0 1 force
execute if score @s animation matches 20 run kill @s
