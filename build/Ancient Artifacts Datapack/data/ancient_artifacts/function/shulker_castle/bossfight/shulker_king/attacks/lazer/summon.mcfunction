summon item_display ~ ~1 ~ {Tags: ["shulker_king_lazer", "INIT"]}
execute facing entity @r[distance=..64] feet as @e[type=item_display, tag=shulker_king_lazer, tag=INIT, distance=..2] run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/lazer/rotate
