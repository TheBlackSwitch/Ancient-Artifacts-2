scoreboard players add @s animation 1
execute if score @s animation matches 10 as @a[distance=..64] at @s run playsound block.note_block.bit hostile @s ~ ~ ~ 1 1.68
execute if score @s animation matches 10..20 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/lazer/prime
execute if score @s animation matches 30 as @a[distance=..64] at @s run playsound ancient_artifacts:entity.artifact_golem.lazer.start hostile @s ~ ~ ~ 0.5 1.39
execute if score @s animation matches 30 run scoreboard players set @s lazer_max 0
execute if score @s animation matches 30 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/lazer/shoot
execute if score @s animation matches 40 run kill @s
