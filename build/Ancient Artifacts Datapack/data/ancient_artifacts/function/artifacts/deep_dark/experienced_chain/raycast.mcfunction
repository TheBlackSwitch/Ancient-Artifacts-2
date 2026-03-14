scoreboard players set #found temp 0
execute align xyz as @e[type=item, dy=0] store result score @s age run data get entity @s Age
execute align xyz as @n[type=item, dy=0, scores={age=..1}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:artifacts/deep_dark/experienced_chain/summon_orb
execute align xyz as @e[type=item, dy=0] run tag @s add checked_smelt
execute if entity @p[distance=..20.5] if score #found temp matches 0 positioned ^ ^ ^0.1 run function ancient_artifacts:artifacts/deep_dark/experienced_chain/raycast
