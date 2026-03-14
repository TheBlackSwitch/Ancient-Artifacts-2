execute if entity @s[y_rotation=-180] positioned ^-3.5 ^-4 ^ run function ancient_artifacts:dungeon/target/wall/random {rot: "clockwise_90"}
execute if entity @s[y_rotation=0] positioned ^-3.5 ^-4 ^ run function ancient_artifacts:dungeon/target/wall/random {rot: "counterclockwise_90"}
execute if entity @s[y_rotation=-90] positioned ^-3.5 ^-4 ^ run function ancient_artifacts:dungeon/target/wall/random {rot: 180}
execute if entity @s[y_rotation=90] positioned ^-3.5 ^-4 ^ run function ancient_artifacts:dungeon/target/wall/random {rot: "none"}
