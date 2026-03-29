execute unless score @s lifetime matches 0.. run scoreboard players set @s lifetime 0
execute if score @s lifetime matches 0 run data merge entity @s {start_interpolation: 1, transformation: {scale: [8.0f, 8.0f, 0.08f]}}
function ancient_artifacts:tag_tamed
scoreboard players operation #search tbs.ID = @s tbs.ID
effect give @e[distance=..3, tag=!tamed, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, predicate=!theblackswitch:v2.0/patch-2/player_id/match_search] slowness 15 2
effect give @e[distance=..3, tag=!tamed, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, predicate=!theblackswitch:v2.0/patch-2/player_id/match_search] weakness 15 0
effect give @e[distance=..3, tag=!tamed, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, predicate=!theblackswitch:v2.0/patch-2/player_id/match_search] darkness 15 0
execute if score @s lifetime matches 20 run kill @s
scoreboard players add @s lifetime 5
