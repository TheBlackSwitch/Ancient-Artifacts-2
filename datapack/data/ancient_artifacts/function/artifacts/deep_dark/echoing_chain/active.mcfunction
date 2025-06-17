execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

scoreboard players operation .search tbs.ID = @s tbs.ID

execute if score @s attack matches 1.. as @e[type=!#ancient_artifacts:non_living] store result score @s hurt run data get entity @s HurtTime

execute if score @s artifact matches 93 if score @s attack matches 1.. at @n[scores={hurt=9..10},predicate=!theblackswitch:matches_search_id] if predicate ancient_artifacts:random/10 run function ancient_artifacts:artifacts/deep_dark/echoing_chain/summon
execute if score @s artifact matches 94 if score @s attack matches 1.. at @n[scores={hurt=9..10},predicate=!theblackswitch:matches_search_id] if predicate ancient_artifacts:random/25 run function ancient_artifacts:artifacts/deep_dark/echoing_chain/summon
execute if score @s artifact matches 95 if score @s attack matches 1.. at @n[scores={hurt=9..10},predicate=!theblackswitch:matches_search_id] if predicate ancient_artifacts:random/35 run function ancient_artifacts:artifacts/deep_dark/echoing_chain/summon