

execute if score @s animation matches 30 as @a[distance=..64] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 5 1.5

execute if score @s animation matches 60 run playsound block.respawn_anchor.deplete hostile @a[distance=..64] ~ ~ ~ 5 2
execute if score @s animation matches 60 run playsound minecraft:entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 5 0
execute if score @s animation matches 60 run playsound minecraft:entity.wither.shoot hostile @a[distance=..64] ~ ~ ~ 2.5 1
execute if score @s animation matches 60 run playsound block.suspicious_gravel.break hostile @a[distance=..64] ~ ~ ~ 5 0
execute if score @s animation matches 60 run particle flash ~ ~ ~ 2 2 2 0 10

execute if score @s animation matches 60 as @a[distance=..64] at @s run playsound ancient_artifacts:entity.artifact_golem.lazer.loop hostile @s ~ ~ ~ 1 1.36
execute if score @s animation matches 60 as @a[distance=..64] at @s run playsound ancient_artifacts:entity.artifact_golem.lazer.start hostile @s ~ ~ ~ 1 1.36
execute if score @s animation matches 60 run tag @s remove lazer_ended

execute if score @s animation matches 60..300 if score .5 slow_tick matches 5 rotated ~ -90 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/fireball_rain/beam
execute if score @s animation matches 60..300 if score .32 slow_tick matches 32 as @a[distance=..64] at @s run playsound ancient_artifacts:entity.artifact_golem.lazer.loop hostile @s ~ ~ ~ 1 1.36

execute if score @s animation matches 301..333 unless entity @s[tag=lazer_ended] if score .32 slow_tick matches 32 as @a[distance=..64] at @s run playsound ancient_artifacts:entity.artifact_golem.lazer.stop hostile @s ~ ~ ~ 1 1.36
execute if score @s animation matches 301..333 unless entity @s[tag=lazer_ended] if score .32 slow_tick matches 32 run tag @s add lazer_ended

execute if score @s animation matches 60..300 if score .5 slow_tick matches 5 as @r[distance=..64] at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/fireball_rain/fireball_rain

execute if score @s animation matches 400.. run scoreboard players set @s animation 0
