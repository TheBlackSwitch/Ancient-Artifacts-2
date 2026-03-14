scoreboard players set #double temp 0
execute if entity @s[tag=double_xp] run scoreboard players set #double temp 1
execute if entity @s[tag=mine_experience] if predicate theblackswitch:__version__/__patch__/rand/40 anchored eyes run function ancient_artifacts:artifacts/deep_dark/experienced_chain/raycast