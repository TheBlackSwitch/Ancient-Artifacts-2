execute if entity @s[tag=difficulty_5] run tag @s add difficulty_4
execute if entity @s[tag=difficulty_4] run tag @s add difficulty_3
execute if entity @s[tag=difficulty_3] run tag @s add difficulty_2
execute if entity @s[tag=difficulty_2] run tag @s add difficulty_1


execute at @n[type=marker,tag=shulker_castle] unless entity @a[distance=..96] unless entity @s[tag=reset] run function ancient_artifacts:shulker_castle/bossfight/reset
execute at @n[type=marker,tag=shulker_castle] if entity @a[distance=..96] at @s unless entity @s[tag=reset] run function ancient_artifacts:shulker_castle/bossfight/shulker_king/control

execute at @n[type=marker,tag=shulker_castle] if entity @a[distance=..64] run tag @s remove reset


##Teleport
execute at @n[tag=shulker_castle,type=marker,distance=..64] at @n[tag=shulker_king_location,distance=..64] run tp @s ~ ~-0.5 ~

##Remove random blocks within
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #ancient_artifacts:shulker_king_remove