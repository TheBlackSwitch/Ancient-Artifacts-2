execute if entity @s[y_rotation=-180] positioned ^-3.5 ^-4 ^1 run function ancient_artifacts:dungeon/target/room/random {rot: 180}
execute if entity @s[y_rotation=0] positioned ^-3.5 ^-4 ^1 run function ancient_artifacts:dungeon/target/room/random {rot: "none"}
execute if entity @s[y_rotation=-90] positioned ^-3.5 ^-4 ^1 run function ancient_artifacts:dungeon/target/room/random {rot: "counterclockwise_90"}
execute if entity @s[y_rotation=90] positioned ^-3.5 ^-4 ^1 run function ancient_artifacts:dungeon/target/room/random {rot: "clockwise_90"}
