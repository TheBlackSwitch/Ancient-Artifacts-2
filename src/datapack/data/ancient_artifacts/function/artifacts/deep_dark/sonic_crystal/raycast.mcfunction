particle sonic_boom
function ancient_artifacts:tag_tamed
execute if entity @e[type=warden,distance=..3] run advancement grant @s only ancient_artifacts:artifacts/deep_dark/sonic_expert
execute as @e[distance=..3,tag=!tamed,type=!#ancient_artifacts:no_damage,tag=!smithed.strict,predicate=!theblackswitch:__version__/__patch__/player_id/match_search] run damage @s 10 sonic_boom by @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1]
execute if entity @s[distance=..25] positioned ^ ^ ^2 run function ancient_artifacts:artifacts/deep_dark/sonic_crystal/raycast