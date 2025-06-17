
execute if score @s sculk_heart_music_timer matches -999999..1 if entity @e[type=item_display,tag=sculk_heart,tag=center,scores={heart_state=2},distance=..40] run scoreboard players set @s sculk_heart_music_timer 13160

execute if entity @e[type=item_display,tag=sculk_heart,tag=center,scores={heart_state=2},distance=..40] \
    if score @s sculk_heart_music_timer matches ..-1000000 run scoreboard players set @s sculk_heart_music_timer 19070

scoreboard players operation .prev_music_timer temp = @s sculk_heart_music_timer

execute store result score .tick_speed temp run function ancient_artifacts:utilities/get_tick_speed
execute if score .tick_speed temp matches 0 run scoreboard players set .tick_speed temp 20


scoreboard players set .delta_tick temp 200

scoreboard players operation .delta_tick temp /= .tick_speed temp

execute if score @s sculk_heart_music_timer matches -1000000.. run scoreboard players operation @s sculk_heart_music_timer -= .delta_tick temp

execute if score .prev_music_timer temp matches 19070.. if score @s sculk_heart_music_timer matches ..19071 run stopsound @s record ancient_artifacts:music.sculk_heart.intro
execute if score .prev_music_timer temp matches 19070.. if score @s sculk_heart_music_timer matches ..19071 run playsound ancient_artifacts:music.sculk_heart.intro record @s ~ ~ ~ 0.5 1 0.5

execute if score .prev_music_timer temp matches 13160.. if score @s sculk_heart_music_timer matches ..13161 run stopsound @s record ancient_artifacts:music.sculk_heart.loop
execute if score .prev_music_timer temp matches 13160.. if score @s sculk_heart_music_timer matches ..13161 run playsound ancient_artifacts:music.sculk_heart.loop record @s ~ ~ ~ 0.45 1 0.45

execute if score @s sculk_heart_music_timer matches 1.. unless entity @e[type=item_display,tag=sculk_heart,tag=center,scores={heart_state=2},distance=..45] run stopsound @s record ancient_artifacts:music.sculk_heart.loop
execute if score @s sculk_heart_music_timer matches 1.. unless entity @e[type=item_display,tag=sculk_heart,tag=center,scores={heart_state=2},distance=..45] run stopsound @s record ancient_artifacts:music.sculk_heart.intro
execute if score @s sculk_heart_music_timer matches 1.. unless entity @e[type=item_display,tag=sculk_heart,tag=center,scores={heart_state=2},distance=..45] run scoreboard players set @s sculk_heart_music_timer -1000000

execute if score @s sculk_heart_music_timer matches 1.. run stopsound @s music


## INTRO: 591t
## LOOP: 1316t
## TOTAL: 1907t
