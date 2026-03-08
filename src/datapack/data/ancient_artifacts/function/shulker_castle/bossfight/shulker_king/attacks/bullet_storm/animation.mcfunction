execute if score @s animation matches 20 run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 10 0
execute if score @s animation matches 20 run playsound minecraft:block.respawn_anchor.ambient hostile @a ~ ~ ~ 10 1
execute if score @s animation matches 20..40 run particle minecraft:portal ~ ~1.35 ~ 0.1 0.1 0.1 2 50 force

execute if score @s animation matches 90 run playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 3 0
execute if score @s animation matches 90 run playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 3 2
execute if score @s animation matches 90 run playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 3 1

execute if score @s animation matches 90 run summon shulker_bullet ~ ~3 ~ {Tags:[bullet_storm,INIT],Steps:2}
execute if score @s animation matches 90 run summon shulker_bullet ~ ~3 ~ {Tags:[bullet_storm,INIT],Steps:2}
execute if score @s animation matches 90 run summon shulker_bullet ~ ~3 ~ {Tags:[bullet_storm,INIT],Steps:2}
execute if score @s animation matches 90 if entity @s[tag=difficulty_3] run summon shulker_bullet ~ ~3 ~ {Tags:[bullet_storm,INIT],Steps:2}
execute if score @s animation matches 90 if entity @s[tag=difficulty_4] run summon shulker_bullet ~ ~3 ~ {Tags:[bullet_storm,INIT],Steps:2}
execute if score @s animation matches 90 if entity @s[tag=difficulty_5] run summon shulker_bullet ~ ~3 ~ {Tags:[bullet_storm,INIT],Steps:2}

execute if score @s animation matches 200.. run scoreboard players set @s animation 0

execute as @e[type=shulker_bullet,tag=bullet_storm,tag=INIT] run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/bullet_storm/prime_bullet