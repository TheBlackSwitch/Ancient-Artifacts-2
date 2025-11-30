
execute at @s unless loaded ~ ~ ~ run return fail

scoreboard players set .entity_count temp 0
execute unless entity @s[tag=multiple_entity_checked] store result score .entity_count temp if entity @e[type=item_display,distance=..10,tag=sculk_heart,tag=center]
execute if score .entity_count temp matches 2.. run kill
tag @s add multiple_entity_checked

##Before Trigger
execute if score @s heart_state matches 1 if score .40 slow_tick matches 1 as @e[tag=sculk_heart,distance=..5] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:2,start_interpolation:0}
execute if score @s heart_state matches 1 if score .40 slow_tick matches 1 run playsound minecraft:entity.warden.heartbeat block @a ~ ~ ~ 8 0.6
execute if score @s heart_state matches 1 if score .40 slow_tick matches 3 as @e[tag=sculk_heart,distance=..5] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.25f,1.25f,1.25f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:20,start_interpolation:0}
execute if score @s heart_state matches 1 if score .40 slow_tick matches 20 at @a[distance=..8,gamemode=!spectator] run tag @s add player_detected
execute if score @s heart_state matches 1 if score .40 slow_tick matches 20 if entity @s[tag=player_detected] at @a[distance=..4] run function ancient_artifacts:sculk_heart/init_particles
execute if score @s heart_state matches 1 if score .40 slow_tick matches 28 if entity @s[tag=player_detected] if entity @a[distance=..4] run function ancient_artifacts:sculk_heart/detect
execute if score @s heart_state matches 1 if score .40 slow_tick matches 40 if entity @s[tag=player_detected] if entity @a[distance=..4] run function ancient_artifacts:sculk_heart/init

##While Trigger
execute if score @s heart_state matches 2..3 if score .20 slow_tick matches 8 as @e[tag=sculk_heart,distance=..5] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:2,start_interpolation:0}
execute if score @s heart_state matches 2..3 if score .20 slow_tick matches 8 run function ancient_artifacts:sculk_heart/heart_beat
execute if score @s heart_state matches 2..3 if score .20 slow_tick matches 9 as @e[tag=sculk_heart,distance=..5] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.25f,1.25f,1.25f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:10,start_interpolation:0}
execute if score @s heart_state matches 2..3 run particle minecraft:entity_effect{color:[0.0039, 0.0980, 0.2117,1.0]} ~ ~ ~ 0.8 0.8 0.8 0.1 1
execute if score @s heart_state matches 2..3 if score .3 slow_tick matches 3 at @e[tag=sculk_heart,distance=..5] run particle minecraft:dust{color:[0.1725, 0.6941, 0.7490],scale:3} ~ ~ ~ 0.2 0.2 0.2 0 3 force


##Waves
execute if score @s heart_state matches 2 as @e[type=warden,distance=..20] at @s run function ancient_artifacts:sculk_heart/delete_warden
execute if score @s heart_state matches 2 if score @s animation matches 0..22 run data modify storage ancient_artifacts:wave UUID1 set from entity @s UUID[0]
execute if score @s heart_state matches 2 if score @s animation matches 0..22 run data modify storage ancient_artifacts:wave UUID2 set from entity @s UUID[1]
execute if score @s heart_state matches 2 if score @s animation matches 0..22 run data modify storage ancient_artifacts:wave UUID3 set from entity @s UUID[2]
execute if score @s heart_state matches 2 if score @s animation matches 0..22 run data modify storage ancient_artifacts:wave UUID4 set from entity @s UUID[3]
execute if score @s heart_state matches 2 if score @s animation matches 0..22 store result storage ancient_artifacts:wave animation int 1 run scoreboard players get @s animation
execute if score @s heart_state matches 2 run scoreboard players set .21 const 21
execute if score @s heart_state matches 2 if score @s animation matches 0..22 store result storage ancient_artifacts:wave wave int 1 run scoreboard players operation .21 const -= @s animation
execute if score @s heart_state matches 2 if score @s animation matches 0..22 run function ancient_artifacts:sculk_heart/check_wave with storage ancient_artifacts:wave
execute if score @s heart_state matches 2 if score @s animation matches 21.. run scoreboard players remove @s animation 1

##End Annimation
execute if score @s heart_state matches 3 if score @s animation matches 100 run playsound entity.warden.sonic_charge block @a ~ ~ ~ 1 0.7

execute if score @s heart_state matches 3 if score @s animation matches 50 run playsound entity.warden.sonic_boom block @a ~ ~ ~ 1 1

execute if score @s heart_state matches 3 if score @s animation matches 50 at @e[tag=sculk_heart,distance=..5] run particle sonic_boom ~ ~ ~ 0.2 0.2 0.2 0 5 force
execute if score @s heart_state matches 3 if score @s animation matches 50 at @e[tag=sculk_heart,distance=..5] run particle minecraft:block{block_state:"minecraft:sculk"} ~ ~ ~ 0.3 0.3 0.3 0 50 force
execute if score @s heart_state matches 3 if score @s animation matches 50 run summon breeze_wind_charge ~ ~ ~ {Motion:[0.0d, -5.0d, 0.d]}
execute if score @s heart_state matches 3 if score @s animation matches 50 run summon breeze_wind_charge ~ ~ ~ {Motion:[0.0d, -5.0d, 0.0d]}
execute if score @s heart_state matches 3 if score @s animation matches 50 at @e[tag=sculk_heart,distance=0.1..5] run setblock ~ ~ ~ air
execute if score @s heart_state matches 3 if score @s animation matches 50 run setblock ~ ~ ~ sculk_catalyst
execute if score @s heart_state matches 3 if score @s animation matches 50 at @e[tag=sculk_heart,distance=0.1..5,tag=!no_chest] run summon marker ~ ~ ~ {Tags:[artifact_chest_place,deep_dark]}
execute if score @s heart_state matches 3 if score @s animation matches 50 at @e[tag=sculk_heart,distance=0.1..5,tag=no_chest] run setblock ~ ~ ~ sculk

execute if score @s heart_state matches 3 if score @s animation matches 50 run advancement grant @a[distance=..32] only ancient_artifacts:main/defeat_sculk_heart
execute if score @s heart_state matches 3 if score @s animation matches 50 run kill @e[tag=sculk_heart,distance=..5]


execute if score @s heart_state matches 3 if score @s animation matches 1.. run scoreboard players remove @s animation 1