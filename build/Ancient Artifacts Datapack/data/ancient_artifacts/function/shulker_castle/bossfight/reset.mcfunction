data modify entity @s Health set value 1024.0f
tag @s add reset
tag @e[type=marker, tag=shulker_king_tp_location, distance=..64] remove shulker_king_location
tag @e[type=marker, tag=occupied, distance=..64] remove occupied
tag @n[type=marker, tag=shulker_castle, distance=..64] add shulker_king_location
tag @n[type=marker, tag=shulker_castle, distance=..64] add occupied
kill @e[type=shulker_bullet, distance=..64]
kill @e[type=shulker, tag=healing_shulker]
kill @e[type=item_display, tag=healing_particle]
scoreboard players set @s animation -200
