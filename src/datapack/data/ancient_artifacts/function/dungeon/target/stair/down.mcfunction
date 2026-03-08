execute if entity @s[y_rotation=90] positioned ^-3.5 ^-3.5 ^8 run function ancient_artifacts:dungeon/target/stair/random_down {rot:clockwise_90}
execute if entity @s[y_rotation=-90] positioned ^-3.5 ^-3.5 ^8 run function ancient_artifacts:dungeon/target/stair/random_down {rot:counterclockwise_90}
execute if entity @s[y_rotation=180] positioned ^-3.5 ^-3.5 ^8 run function ancient_artifacts:dungeon/target/stair/random_down {rot:180}
execute if entity @s[y_rotation=0] positioned ^-3.5 ^-3.5 ^8 run function ancient_artifacts:dungeon/target/stair/random_down {rot:none}
