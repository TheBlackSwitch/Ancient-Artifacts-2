execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

scoreboard players operation .search tbs.ID = @s tbs.ID

function ancient_artifacts:tag_tamed

execute if score @s attack matches 1.. as @e[type=!#ancient_artifacts:non_living] store result score @s hurt run data get entity @s HurtTime
execute if score @s artifact matches 138 if score @s attack matches 1.. if predicate ancient_artifacts:random/20 as @n[scores={hurt=9..10},distance=..20] at @s anchored eyes facing entity @e[distance=0.1..40,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed,predicate=!theblackswitch:matches_search_id,limit=1,sort=random] eyes run function ancient_artifacts:artifacts/end/radiant_watch/init_lazer
execute if score @s artifact matches 139 if score @s attack matches 1.. if predicate ancient_artifacts:random/35 as @n[scores={hurt=9..10},distance=..20] at @s anchored eyes facing entity @e[distance=0.1..40,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed,predicate=!theblackswitch:matches_search_id,limit=1,sort=random] eyes run function ancient_artifacts:artifacts/end/radiant_watch/init_lazer
execute if score @s artifact matches 140 if score @s attack matches 1.. if predicate ancient_artifacts:random/45 as @n[scores={hurt=9..10},distance=..20] at @s anchored eyes facing entity @e[distance=0.1..40,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed,predicate=!theblackswitch:matches_search_id,limit=1,sort=random] eyes run function ancient_artifacts:artifacts/end/radiant_watch/init_lazer