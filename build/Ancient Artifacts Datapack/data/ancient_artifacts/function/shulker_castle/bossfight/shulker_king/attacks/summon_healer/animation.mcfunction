execute if score @s animation matches 20..165 if score #10 tbs.slow_tick matches 10 run playsound minecraft:block.respawn_anchor.ambient hostile @a ~ ~ ~ 10 1.5
execute if score @s animation matches 20..165 if score #10 tbs.slow_tick matches 10 run particle minecraft:portal ~ ~1.35 ~ 0.1 0.1 0.1 2 50 force
execute if score @s animation matches 40 if predicate theblackswitch:v2.0/patch-2/rand/25 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/summon_healer/summon
execute if score @s animation matches 90 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/summon_healer/summon
execute if score @s animation matches 140 if predicate theblackswitch:v2.0/patch-2/rand/25 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/summon_healer/summon
execute if score @s animation matches 220.. run scoreboard players set @s animation 0
