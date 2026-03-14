
# init the player
execute as @a unless score @s sculk_heart_music_timer matches -2147483648..2147483647 run scoreboard players set @s sculk_heart_music_timer -1000000

execute as @e[type=item_display,tag=sculk_heart,tag=center] at @s run function ancient_artifacts:sculk_heart/heart/center
execute as @e[type=#ancient_artifacts:hostile,tag=sculk_spawn_anim] at @s run function ancient_artifacts:sculk_heart/waves/summon_anim

execute as @a at @s run function ancient_artifacts:sculk_heart/music/run