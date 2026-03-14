effect give @s glowing 1 0 true
tag @e[tag=shulker_king_tp_location] remove shulker_king_location
tag @n[tag=occupied, type=marker] remove occupied
kill @e[type=item_display, tag=healing_particle, distance=..64]
execute as @e[tag=shulker_king_tp_location, tag=!occupied, limit=1, sort=random, distance=4..48] run function ancient_artifacts:shulker_castle/bossfight/shulker_king/defence/teleport/teleport
execute facing entity @s eyes run function ancient_artifacts:shulker_castle/bossfight/shulker_king/defence/teleport/particle
particle portal ~ ~1 ~ 0 0 0 0.5 50 force
playsound entity.shulker.teleport hostile @a ~ ~ ~
execute at @s run particle portal ~ ~1 ~ 0 0 0 0.5 50 force
execute at @s run playsound entity.shulker.teleport hostile @a ~ ~ ~
