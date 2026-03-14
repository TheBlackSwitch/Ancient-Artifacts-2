stopsound @s music
execute if score @s shulker_king_music_timer matches 10 at @s run playsound ancient_artifacts:music.shulker_king.intro record @s ~ ~ ~ 0.5 1
execute if score @s shulker_king_music_timer matches 10 run tag @s add shulker_king_music_phase_1
execute if score @s shulker_king_music_timer matches 4290.. at @s[tag=shulker_king_music_phase_1] run playsound ancient_artifacts:music.shulker_king.loop record @s ~ ~ ~ 0.5 1
execute if score @s shulker_king_music_timer matches 4290.. run tag @s remove shulker_king_music_phase_1
execute if score @s shulker_king_music_timer matches 17990.. run tag @s add shulker_king_music_phase_1
execute if score @s shulker_king_music_timer matches 17990.. run scoreboard players set @s shulker_king_music_timer 4280
execute store result score .tick_speed temp run function ancient_artifacts:utilities/tick_speed/get
execute if score .tick_speed temp matches 0 run scoreboard players set .tick_speed temp 20
scoreboard players set .delta_tick temp 200
scoreboard players operation .delta_tick temp /= .tick_speed temp
scoreboard players operation @s shulker_king_music_timer += .delta_tick temp
