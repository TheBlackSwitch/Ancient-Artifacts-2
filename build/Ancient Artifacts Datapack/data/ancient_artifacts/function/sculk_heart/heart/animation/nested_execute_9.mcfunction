playsound entity.warden.sonic_boom block @a ~ ~ ~ 1 1
setblock ~ ~ ~ sculk_catalyst
execute at @e[tag=sculk_heart, distance=..5] run function ancient_artifacts:sculk_heart/heart/animation/nested_execute_8
summon breeze_wind_charge ~ ~ ~ {Motion: [0.0d, -5.0d, 0.0d]}
summon breeze_wind_charge ~ ~ ~ {Motion: [0.0d, -5.0d, 0.0d]}
execute at @e[tag=sculk_heart, distance=0.1..5] run setblock ~ ~ ~ air
execute at @e[tag=sculk_heart, distance=0.1..5, tag=!no_chest] run summon marker ~ ~ ~ {Tags: ["artifact_chest_place", "deep_dark"]}
execute as @e[type=marker, tag=artifact_chest_place] at @s run function ancient_artifacts:artifact_chests/place
advancement grant @a[distance=..32] only ancient_artifacts:main/defeat_sculk_heart
function ancient_artifacts:sculk_heart/bossbar/reset with storage ancient_artifacts:wave
kill @e[tag=sculk_heart, distance=..5]
