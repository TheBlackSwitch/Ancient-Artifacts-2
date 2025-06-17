scoreboard players set .double temp 0
execute if entity @s[tag=double_xp] run scoreboard players set .double temp 1
execute if entity @s[tag=mine_experience] if predicate ancient_artifacts:random/20 anchored eyes run function ancient_artifacts:artifacts/deep_dark/experienced_chain/raycast