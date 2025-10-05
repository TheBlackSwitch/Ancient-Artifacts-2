particle firework ~ ~ ~ 0 0 0 0.1 5 force
particle flash{"color":[1.0, 1.0, 1.0, 1.0]} ~ ~ ~ 0 0 0 0 1 force @s
particle dust{color:[1.0,0.3,0.6],scale:3} ~ ~ ~ 0.1 0.1 0.1 0 2 force
function ancient_artifacts:tag_tamed
execute as @e[tag=!tamed,type=!#ancient_artifacts:no_damage,tag=!no_damage,distance=..3,predicate=!theblackswitch:matches_search_id] run function ancient_artifacts:utilities/damage_entity_by_search {damage:5}
execute if entity @s[distance=..40] positioned ^ ^ ^0.5 run function ancient_artifacts:artifacts/end/radiant_watch/lazer