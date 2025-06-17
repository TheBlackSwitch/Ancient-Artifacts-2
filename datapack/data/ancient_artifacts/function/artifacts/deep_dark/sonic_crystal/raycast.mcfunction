particle sonic_boom
function ancient_artifacts:tag_tamed
execute if entity @e[type=warden,distance=..3] run advancement grant @s only ancient_artifacts:artifacts/deep_dark/sonic_expert
execute as @e[distance=..3,tag=!tamed,type=!#ancient_artifacts:no_damage,tag=!no_damage,predicate=!theblackswitch:matches_search_id] run damage @s 10 sonic_boom by @a[predicate=theblackswitch:matches_search_id,limit=1]
execute if entity @s[distance=..25] positioned ^ ^ ^2 run function ancient_artifacts:artifacts/deep_dark/sonic_crystal/raycast