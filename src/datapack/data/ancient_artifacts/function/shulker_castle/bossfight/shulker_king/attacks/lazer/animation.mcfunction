
execute if score @s animation matches 20..100 run particle dust{color:[0.8,0.0,0.9],scale:1} ~ ~ ~ 1.5 1.5 1.5 0 5 force

execute if score @s animation matches 20..100 unless entity @s[tag=difficulty_3] if score #10 tbs.slow_tick matches 5 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/lazer/summon
execute if score @s animation matches 20..100 if entity @s[tag=difficulty_3] if score #5 tbs.slow_tick matches 3 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/lazer/summon


execute if score @s animation matches 150.. run scoreboard players set @s animation 0