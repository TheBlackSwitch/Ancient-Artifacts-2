particle firework ~ ~ ~ 0 0 0 0.1 5 force
particle flash{color: [1.0d, 1.0d, 1.0d, 1.0d]} ~ ~ ~ 0 0 0 0 1 force @s
particle dust{color: [1.0d, 0.3d, 0.6d], scale: 3} ~ ~ ~ 0.1 0.1 0.1 0 2 force
function ancient_artifacts:tag_tamed
execute as @e[tag=!tamed, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, distance=..3, predicate=!theblackswitch:v2.0/patch-4/player_id/match_search] run function ancient_artifacts:utilities/damage_entity_by_search {damage: 5}
execute if entity @s[distance=..40] positioned ^ ^ ^0.5 run function ancient_artifacts:artifacts/end/radiant_watch/lazer
