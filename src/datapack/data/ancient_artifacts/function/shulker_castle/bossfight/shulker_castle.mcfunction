scoreboard players set .entity_count temp 0
execute store result score .entity_count temp if entity @e[type=marker,distance=..1,tag=shulker_castle]
execute if score .entity_count temp matches 2.. run kill @s

##Update bossbar
execute if score #10 tbs.slow_tick matches 3 run function ancient_artifacts:shulker_castle/bossfight/bossbar/update

##Song
execute as @a[distance=..64] run tag @s add shulker_king_music
execute as @a[distance=..63,tag=shulker_king_music] run function ancient_artifacts:shulker_castle/bossfight/song/run

##effects
effect give @a[distance=..64] unluck 5 1
effect give @a[distance=..64] jump_boost 5 0
effect clear @a[distance=..64] levitation

##Create knockback_bullet
execute as @e[type=shulker_bullet,tag=!knockback_bullet_checked,tag=!strong_bullet,distance=..96] run function ancient_artifacts:shulker_castle/bossfight/shulker_king/defence/knockback_bullets/modify


##Remove occupied
execute if score #60 tbs.slow_tick matches 60 as @e[tag=occupied] at @s unless entity @e[type=shulker,distance=..5,tag=!bounce_pad_hitbox] run tag @s remove occupied

execute positioned ~-32 ~-16 ~-32 as @a[dx=64,dy=-1000,dz=64] positioned ~32 ~16 ~32 run function ancient_artifacts:shulker_castle/bossfight/void_save/save