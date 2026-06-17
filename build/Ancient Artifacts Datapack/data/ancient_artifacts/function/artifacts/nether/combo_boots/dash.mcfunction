scoreboard players remove @s dash_power 1
execute unless block ^ ^ ^3 #ancient_artifacts:spawn_air run return run scoreboard players set @s dash_power 0
execute unless block ^ ^ ^2 #ancient_artifacts:spawn_air run return run scoreboard players set @s dash_power 0
execute unless block ^ ^ ^1 #ancient_artifacts:spawn_air run return run scoreboard players set @s dash_power 0
tp @s ^ ^ ^0.1
particle dust{color: [1.0d, 1.0d, 1.0d], scale: 4} ^ ^ ^3 0.3 0.3 0.3 0.1 10 force
function ancient_artifacts:tag_tamed
scoreboard players operation #search tbs.ID = @s tbs.ID
execute as @e[tag=!tamed, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, predicate=!theblackswitch:v2.0/patch-3/player_id/match_search, distance=..3] run function ancient_artifacts:utilities/damage_entity_by_search {damage: 3}
execute positioned ^ ^1 ^-1 run function ancient_artifacts:utilities/knockback/deal {strength: 5}
