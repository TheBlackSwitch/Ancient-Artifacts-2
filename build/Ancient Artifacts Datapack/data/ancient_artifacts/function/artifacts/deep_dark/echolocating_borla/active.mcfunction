execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score #40 tbs.slow_tick matches 40 run scoreboard players operation #search tbs.ID = @s tbs.ID
execute if score @s artifact matches 96 if score #40 tbs.slow_tick matches 40 as @e[type=item_display, tag=artifact_golem, nbt={Glowing: 1b}] run data modify entity @s Glowing set value 0b
execute if score @s artifact matches 96 if score #40 tbs.slow_tick matches 40 store result score .echolcated_phantoms temp if entity @e[type=phantom, distance=..20]
execute if score @s artifact matches 97 if score #40 tbs.slow_tick matches 40 store result score .echolcated_phantoms temp if entity @e[type=phantom, distance=..25]
execute if score @s artifact matches 98 if score #40 tbs.slow_tick matches 40 store result score .echolcated_phantoms temp if entity @e[type=phantom, distance=..30]
execute if score @s artifact matches 99 if score #40 tbs.slow_tick matches 40 store result score .echolcated_phantoms temp if entity @e[type=phantom, distance=..35]
execute if score @s artifact matches 100 if score #40 tbs.slow_tick matches 40 store result score .echolcated_phantoms temp if entity @e[type=phantom, distance=..50]
execute if score #40 tbs.slow_tick matches 40 if score .echolcated_phantoms temp matches 3.. run advancement grant @s only ancient_artifacts:artifacts/deep_dark/echolocating_expert
execute if score #40 tbs.slow_tick matches 40 run team join aa.color.green @e[type=#ancient_artifacts:passive, tag=!smithed.strict]
execute if score #40 tbs.slow_tick matches 40 run team join aa.color.yellow @e[type=#ancient_artifacts:neutral, tag=!smithed.strict]
execute if score #40 tbs.slow_tick matches 40 run team join aa.color.red @e[type=#ancient_artifacts:hostile, tag=!smithed.strict]
execute if score @s artifact matches 96 if score #40 tbs.slow_tick matches 40 run effect give @e[type=!#ancient_artifacts:non_living, type=!#ancient_artifacts:no_damage, predicate=!theblackswitch:v2.0/patch-1/player_id/match_search, distance=..20, tag=!no_glow, tag=!smithed.strict] glowing 3 0 true
execute if score @s artifact matches 97 if score #40 tbs.slow_tick matches 40 run effect give @e[type=!#ancient_artifacts:non_living, type=!#ancient_artifacts:no_damage, predicate=!theblackswitch:v2.0/patch-1/player_id/match_search, distance=..25, tag=!no_glow, tag=!smithed.strict] glowing 3 0 true
execute if score @s artifact matches 98 if score #40 tbs.slow_tick matches 40 run effect give @e[type=!#ancient_artifacts:non_living, type=!#ancient_artifacts:no_damage, predicate=!theblackswitch:v2.0/patch-1/player_id/match_search, distance=..30, tag=!no_glow, tag=!smithed.strict] glowing 3 0 true
execute if score @s artifact matches 99 if score #40 tbs.slow_tick matches 40 run effect give @e[type=!#ancient_artifacts:non_living, type=!#ancient_artifacts:no_damage, predicate=!theblackswitch:v2.0/patch-1/player_id/match_search, distance=..35, tag=!no_glow, tag=!smithed.strict] glowing 3 0 true
execute if score @s artifact matches 100 if score #40 tbs.slow_tick matches 40 run effect give @e[type=!#ancient_artifacts:non_living, type=!#ancient_artifacts:no_damage, predicate=!theblackswitch:v2.0/patch-1/player_id/match_search, distance=..50, tag=!no_glow, tag=!smithed.strict] glowing 3 0 true
