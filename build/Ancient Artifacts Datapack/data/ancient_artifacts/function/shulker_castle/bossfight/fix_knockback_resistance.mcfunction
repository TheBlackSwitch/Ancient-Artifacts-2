execute store success score .succes temp if entity @e[type=marker, tag=shulker_castle, distance=..64]
execute unless score .succes temp matches 1 run attribute @s knockback_resistance modifier remove shulker_king_bossbattle
execute unless score .succes temp matches 1 run return run attribute @s explosion_knockback_resistance modifier remove shulker_king_bossbattle
attribute @s knockback_resistance modifier add shulker_king_bossbattle -10000000 add_value
attribute @s explosion_knockback_resistance modifier add shulker_king_bossbattle -10000000 add_value
