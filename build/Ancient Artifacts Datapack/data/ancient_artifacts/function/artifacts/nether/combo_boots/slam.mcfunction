tag @s add slam
scoreboard players add @a[tag=slam] slam_distance 1
execute as @a[tag=slam] at @s if block ~ ~-1 ~ air run particle dust{color: [1.0d, 1.0d, 1.0d], scale: 4} ~ ~ ~ 0.1 0.3 0.1 0 5 force
execute as @a[tag=slam] at @s if block ~ ~-1 ~ air run playsound block.sand.break player @a ~ ~ ~ 1 0
execute as @a[tag=slam] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
tag @a[tag=slam, predicate=!ancient_artifacts:holding_tool] remove slam
tag @a[tag=slam, predicate=!theblackswitch:v2.0/patch-4/movement_check/sneak] remove slam
execute as @a[tag=slam] at @s unless block ~ ~-1 ~ air run function ancient_artifacts:artifacts/nether/combo_boots/slam_wave
schedule function ancient_artifacts:artifacts/nether/combo_boots/slam 1
