$execute if score .44 slow_tick matches 44 run playsound $(sound) hostile @a[distance=..5] ~ ~ ~ 0.1 1
execute if score .3 slow_tick matches 3 run particle electric_spark ~ ~ ~ 0.3 0.3 0.3 0 1 normal
execute if score .3 slow_tick matches 3 run particle dust{color:[0.498, 0.0, 0.678],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 1 normal
execute if score .3 slow_tick matches 3 run particle dust{color:[0.988, 0.357, 0.945],scale:1} ~ ~ ~ 0.1 0.1 0.1 0 1 force

scoreboard players add @s lazer_limit 1

execute if score .10 slow_tick matches 10 unless block ~ ~ ~ #ancient_artifacts:lazer_reflect unless block ~0.5 ~ ~ #ancient_artifacts:lazer_reflect unless block ~-0.5 ~ ~ #ancient_artifacts:lazer_reflect unless block ~ ~ ~0.5 #ancient_artifacts:lazer_reflect unless block ~ ~ ~-0.5 #ancient_artifacts:lazer_reflect unless block ~ ~0.5 ~ #ancient_artifacts:lazer_reflect unless block ~ ~-0.5 ~ #ancient_artifacts:lazer_reflect as @e[dy=0] run damage @s 1 ancient_artifacts:lazer
$execute unless score @s lazer_limit matches 200.. if block ~ ~ ~ #ancient_artifacts:lazer_transparent positioned ^ ^ ^0.5 run function ancient_artifacts:artifact_golem/attacks/shoot_lazer {sound:'$(sound)'}
$execute unless score @s lazer_limit matches 200.. if block ~ ~ ~ #ancient_artifacts:lazer_reflect rotated ~170 ~ positioned ^ ^ ^0.5 run function ancient_artifacts:artifact_golem/attacks/shoot_lazer {sound:'$(sound)'}
execute unless block ~ ~ ~ #ancient_artifacts:lazer_transparent unless block ~ ~ ~ #ancient_artifacts:lazer_reflect if score .3 slow_tick = .3 random_delay run setblock ~ ~ ~ air destroy