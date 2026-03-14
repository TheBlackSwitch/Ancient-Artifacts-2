execute if entity @s[y_rotation=90] positioned ^-3.5 ^3.5 ^1 run function ancient_artifacts:dungeon/target/stair/random_up {rot:clockwise_90}
execute if entity @s[y_rotation=-90] positioned ^-3.5 ^3.5 ^1 run function ancient_artifacts:dungeon/target/stair/random_up {rot:counterclockwise_90}
execute if entity @s[y_rotation=180] positioned ^-3.5 ^3.5 ^1 run function ancient_artifacts:dungeon/target/stair/random_up {rot:180}
execute if entity @s[y_rotation=0] positioned ^-3.5 ^3.5 ^1 run function ancient_artifacts:dungeon/target/stair/random_up {rot:none}
