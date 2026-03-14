execute if entity @s[tag=difficulty_1] run attribute @s max_health base set 200
execute if entity @s[tag=difficulty_2] run attribute @s max_health base set 300
execute if entity @s[tag=difficulty_3] run attribute @s max_health base set 400
execute if entity @s[tag=difficulty_4] run attribute @s max_health base set 500
execute if entity @s[tag=difficulty_5] run attribute @s max_health base set 600

data merge entity @s {Health:1024f,Invulnerable:0b}

effect give @s resistance 1 255 true

team leave @s

scoreboard players set @s animation 0
tag @s add boss_started

execute as @n[type=marker,tag=shulker_castle] run function ancient_artifacts:shulker_castle/bossfight/bossbar/get_uuid
execute as @n[type=marker,tag=shulker_castle] run function ancient_artifacts:shulker_castle/bossfight/bossbar/init with storage ancient_artifacts:shulker_king

execute as @n[type=marker,tag=shulker_castle] run tag @s add boss_started