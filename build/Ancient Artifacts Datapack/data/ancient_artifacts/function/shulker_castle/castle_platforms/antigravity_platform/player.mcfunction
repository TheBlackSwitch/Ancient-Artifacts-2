attribute @s gravity modifier remove antigravity
attribute @s safe_fall_distance modifier remove antigravity
data remove storage ancient_artifacts:player active_effects
data modify storage ancient_artifacts:player active_effects set from entity @s active_effects
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 1b}]} run attribute @s gravity modifier add antigravity -0.15 add_multiplied_base
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 2b}]} run attribute @s gravity modifier add antigravity -0.3 add_multiplied_base
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 3b}]} run attribute @s gravity modifier add antigravity -0.5 add_multiplied_base
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 4b}]} run attribute @s gravity modifier add antigravity -0.65 add_multiplied_base
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 5b}]} run attribute @s gravity modifier add antigravity -0.75 add_multiplied_base
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 6b}]} run attribute @s gravity modifier add antigravity -0.8 add_multiplied_base
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 1b}]} run attribute @s safe_fall_distance modifier add antigravity 4 add_value
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 2b}]} run attribute @s safe_fall_distance modifier add antigravity 12 add_value
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 3b}]} run attribute @s safe_fall_distance modifier add antigravity 20 add_value
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 4b}]} run attribute @s safe_fall_distance modifier add antigravity 28 add_value
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 5b}]} run attribute @s safe_fall_distance modifier add antigravity 36 add_value
execute if data storage ancient_artifacts:player {active_effects: [{id: "minecraft:unluck", amplifier: 6b}]} run attribute @s safe_fall_distance modifier add antigravity 44 add_value
