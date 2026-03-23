particle end_rod ~ ~ ~ 0 0 0 0 1 force
particle dust{color:[0.8,0.0,0.9],scale:2} ~ ~ ~ 0.1 0.1 0.1 0 1 force


execute as @a[distance=..3,nbt={HurtTime:0s}] run damage @s 3 ancient_artifacts:shulker_king_lazer by @n[type=shulker,tag=shulker_king,distance=..96]
execute if entity @e[tag=shulker_king,tag=difficulty_4,distance=..96] as @a[distance=..3,nbt={HurtTime:0s}] run damage @s 3 ancient_artifacts:shulker_king_lazer by @n[type=shulker,tag=shulker_king,distance=..96]

scoreboard players add @s lazer_max 1
execute if entity @s[distance=..64] positioned ^ ^ ^0.25 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/lazer/shoot