execute as @a unless score @s sculk_heart_music_timer matches -2147483648..2147483647 run scoreboard players set @s sculk_heart_music_timer -1000000

execute as @e[type=item_display,tag=sculk_heart,tag=center] unless score @s heart_state matches 1.. run scoreboard players set @s heart_state 1
execute as @e[type=item_display,tag=sculk_heart,tag=center] at @s run function ancient_artifacts:sculk_heart/heart
execute as @e[tag=sculk_spawn_anim] at @s run function ancient_artifacts:sculk_heart/summon_anim
execute if score .3 slow_tick matches 3 as @e[tag=buffed_weak] run function ancient_artifacts:sculk_heart/buffed_mob

execute as @a at @s run function ancient_artifacts:sculk_heart/music