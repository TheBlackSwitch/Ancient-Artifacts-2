execute if score @s animation matches 20 run function ancient_artifacts:sculk_heart/bossbar/init with storage ancient_artifacts:wave
execute if score @s animation matches 0..20 run function ancient_artifacts:sculk_heart/bossbar/update with storage ancient_artifacts:wave
execute if score @s animation matches 1..20 run function ancient_artifacts:sculk_heart/waves/summon
playsound entity.wither.break_block hostile @a ~ ~ ~ 0.3 0.7
playsound block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 0.7 0
particle dust{color: [1.0d, 1.0d, 1.0d], scale: 4} ~ ~ ~ 1 1 1 0.1 30
scoreboard players remove @s animation 1
