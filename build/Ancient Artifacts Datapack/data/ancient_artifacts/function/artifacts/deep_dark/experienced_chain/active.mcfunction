execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s attack matches 1.. as @e[type=!#ancient_artifacts:non_living] store result score @s hurt run data get entity @s HurtTime
execute if score @s artifact matches 84 if score @s attack matches 30.. if predicate theblackswitch:v2.0/patch-3/rand/20 at @n[scores={hurt=9..10}, distance=0.01..20] run function ancient_artifacts:artifacts/deep_dark/experienced_chain/summon_orb
execute if score @s artifact matches 85 if score @s attack matches 30.. if predicate theblackswitch:v2.0/patch-3/rand/35 at @n[scores={hurt=9..10}, distance=0.01..20] run function ancient_artifacts:artifacts/deep_dark/experienced_chain/summon_orb
execute if score @s artifact matches 86.. if score @s attack matches 30.. if predicate theblackswitch:v2.0/patch-3/rand/50 at @n[scores={hurt=9..10}, distance=0.01..20] run function ancient_artifacts:artifacts/deep_dark/experienced_chain/summon_orb
execute if score @s artifact matches 87.. run tag @s add mine_experience
execute if score @s artifact matches 88 run tag @s add double_xp
