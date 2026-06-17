execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s artifact matches 13 if score @s attack matches 1.. if predicate theblackswitch:v2.0/patch-3/rand/25 run function ancient_artifacts:artifacts/overworld/shockwave_bracelet/summon
execute if score @s artifact matches 14 if score @s attack matches 1.. if predicate theblackswitch:v2.0/patch-3/rand/35 run function ancient_artifacts:artifacts/overworld/shockwave_bracelet/summon
execute if score @s artifact matches 15 if score @s attack matches 1.. if predicate theblackswitch:v2.0/patch-3/rand/50 run function ancient_artifacts:artifacts/overworld/shockwave_bracelet/summon
tag @e[tag=shockwave_1] remove INIT
tag @e[tag=shockwave_2] remove INIT
tag @e[tag=shockwave_3] remove INIT
