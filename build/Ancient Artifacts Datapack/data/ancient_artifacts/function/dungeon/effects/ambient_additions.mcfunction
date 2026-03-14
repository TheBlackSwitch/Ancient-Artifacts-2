execute store result score @s random run random value 0..100
execute if entity @s[scores={effect_type=1, random=85..}] run playsound minecraft:particle.soul_escape ambient @s ^ ^ ^3 5 0
execute if entity @s[scores={effect_type=1, random=70..84}] run playsound minecraft:particle.soul_escape ambient @s ^ ^ ^-3 5 0
execute if entity @s[scores={effect_type=1, random=55..69}] run playsound minecraft:particle.soul_escape ambient @s ^3 ^ ^ 5 0
execute if entity @s[scores={effect_type=1, random=40..54}] run playsound minecraft:particle.soul_escape ambient @s ^-3 ^ ^ 5 0
execute if entity @s[scores={effect_type=1, random=15..19}] run playsound entity.lightning_bolt.thunder ambient @s ^ ^ ^-3 0.3 1
execute if entity @s[scores={effect_type=1, random=10..14}] run playsound entity.lightning_bolt.thunder ambient @s ^-3 ^ ^-3 0.3 1
execute if entity @s[scores={effect_type=1, random=5..9}] run playsound entity.lightning_bolt.thunder ambient @s ^ ^ ^3 0.3 1
execute if entity @s[scores={effect_type=1, random=0..4}] run playsound entity.lightning_bolt.thunder ambient @s ^3 ^ ^ 0.3 1
execute if entity @s[scores={effect_type=2, random=36..40}] run function ancient_artifacts:rand_pitch {ID: "minecraft:block.water.ambient", source: "ambient", target: "@s", pos: "^ ^ ^3", vol: 1, minVol: 0, range: "50..200"}
execute if entity @s[scores={effect_type=2, random=31..35}] run function ancient_artifacts:rand_pitch {ID: "minecraft:block.water.ambient", source: "ambient", target: "@s", pos: "^ ^ ^-3", vol: 1, minVol: 0, range: "50..200"}
execute if entity @s[scores={effect_type=2, random=26..30}] run function ancient_artifacts:rand_pitch {ID: "minecraft:block.water.ambient", source: "ambient", target: "@s", pos: "^3 ^ ^", vol: 1, minVol: 0, range: "50..200"}
execute if entity @s[scores={effect_type=2, random=21..25}] run function ancient_artifacts:rand_pitch {ID: "minecraft:block.water.ambient", source: "ambient", target: "@s", pos: "^-3 ^ ^", vol: 1, minVol: 0, range: "50..200"}
execute if entity @s[scores={effect_type=2, random=7..8}] run function ancient_artifacts:rand_pitch {ID: "minecraft:block.bubble_column.whirlpool_ambient", source: "ambient", target: "@s", pos: "^ ^ ^3", vol: 1, minVol: 0, range: "50..200"}
execute if entity @s[scores={effect_type=2, random=5..6}] run function ancient_artifacts:rand_pitch {ID: "minecraft:block.bubble_column.whirlpool_ambient", source: "ambient", target: "@s", pos: "^ ^ ^-3", vol: 1, minVol: 0, range: "50..200"}
execute if entity @s[scores={effect_type=2, random=3..4}] run function ancient_artifacts:rand_pitch {ID: "minecraft:block.bubble_column.whirlpool_ambient", source: "ambient", target: "@s", pos: "^3 ^ ^", vol: 1, minVol: 0, range: "50..200"}
execute if entity @s[scores={effect_type=2, random=1..2}] run function ancient_artifacts:rand_pitch {ID: "minecraft:block.bubble_column.whirlpool_ambient", source: "ambient", target: "@s", pos: "^-3 ^ ^", vol: 1, minVol: 0, range: "50..200"}
execute if entity @s[scores={effect_type=2, random=30..100}] run function ancient_artifacts:rand_pitch {ID: "minecraft:block.bubble_column.bubble_pop", source: "ambient", target: "@s", pos: "^ ^ ^", vol: 1, minVol: 0, range: "100..200"}
execute if entity @s[scores={effect_type=2}] run particle dripping_dripstone_water ~ ~4 ~ 1 1 1 0 5 force
execute if entity @s[scores={effect_type=2}] run particle minecraft:rain ~ ~ ~ 2 2 2 0 20 force
execute if entity @s[scores={effect_type=1..2, random=30..100}] run particle dripping_dripstone_water ~ ~4 ~ 5 1.3 5 0 5 force
