execute as @a[distance=..64] run function ancient_artifacts:shulker_castle/bossfight/song/reset
execute as @a[distance=..96] at @s run playsound ancient_artifacts:entity.shulker_king.victory master @s ~ ~ ~ 0.5 1
tag @s add boss_finished
advancement grant @a[distance=..96] only ancient_artifacts:main/defeat_shulker_king
kill @e[type=item_display, tag=healing_particle, distance=..64]
kill @e[type=shulker, tag=healing_shulker, distance=..64]
kill @e[type=shulker_bullet, distance=..64]
kill @e[type=item_display, tag=shulker_king_lazer, distance=..64]
execute if entity @s[tag=difficulty_1] run setblock ~ ~ ~ chest{LootTable: "ancient_artifacts:shulker_king_loot/difficulty_1"} replace
execute if entity @s[tag=difficulty_2] run setblock ~ ~ ~ chest{LootTable: "ancient_artifacts:shulker_king_loot/difficulty_2"} replace
execute if entity @s[tag=difficulty_3] run setblock ~ ~ ~ chest{LootTable: "ancient_artifacts:shulker_king_loot/difficulty_3"} replace
execute if entity @s[tag=difficulty_4] run setblock ~ ~ ~ chest{LootTable: "ancient_artifacts:shulker_king_loot/difficulty_4"} replace
execute if entity @s[tag=difficulty_5] run setblock ~ ~ ~ chest{LootTable: "ancient_artifacts:shulker_king_loot/difficulty_5"} replace
