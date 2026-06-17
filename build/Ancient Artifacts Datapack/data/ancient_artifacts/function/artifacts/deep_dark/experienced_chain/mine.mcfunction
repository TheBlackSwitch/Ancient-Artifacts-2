scoreboard players set #double temp 0
execute if entity @s[tag=double_xp] run scoreboard players set #double temp 1
execute if entity @s[tag=mine_experience] if predicate theblackswitch:v2.0/patch-3/rand/40 anchored eyes run function ancient_artifacts:artifacts/deep_dark/experienced_chain/raycast
