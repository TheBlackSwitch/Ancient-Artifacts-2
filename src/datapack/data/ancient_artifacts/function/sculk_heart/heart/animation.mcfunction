
#-------------------------------------------------------
## Before Trigger
#-------------------------------------------------------

execute if score @s heart_state matches 1:
    tag @s add smithed.entity
    tag @s add smithed.strict

    # Slow heart beat
    execute if score #40 tbs.slow_tick matches 1 as @e[type=item_display,tag=sculk_heart,distance=..5] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:2,start_interpolation:0}
    execute if score #40 tbs.slow_tick matches 1 run playsound minecraft:entity.warden.heartbeat block @a ~ ~ ~ 8 0.6
    execute if score #40 tbs.slow_tick matches 3 as @e[type=item_display,tag=sculk_heart,distance=..5] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.25f,1.25f,1.25f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:20,start_interpolation:0}
    
    execute if score #20 tbs.slow_tick matches 2 if entity @a[distance=..5,gamemode=!spectator]:
        tag @s add player_detected
        tag @a[distance=..5,gamemode=!spectator] add sculk_heart_trail_start
        playsound minecraft:block.respawn_anchor.charge block @a ~ ~ ~ 1 1

    execute if entity @s[tag=player_detected]:
        scoreboard players add @s animation 1
        execute if score @s animation matches ..42 as @a[distance=..5,gamemode=!spectator]:
            scoreboard players set #loop_count temp 0
            function ancient_artifacts:sculk_heart/heart/beam

        execute if score @s animation matches 38 run function ancient_artifacts:sculk_heart/heart/detect
        execute if score @s animation matches 50 run return run function ancient_artifacts:sculk_heart/heart/init
        execute unless entity @a[distance=..5,gamemode=!spectator]:
            tag @s remove player_detected
            scoreboard players set @s animation 0

#-------------------------------------------------------
## While Trigger
#-------------------------------------------------------

execute if score @s heart_state matches 2..3:
    execute if score #20 tbs.slow_tick matches 8 as @e[type=item_display,tag=sculk_heart,distance=..5] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:2,start_interpolation:0}
    execute if score #20 tbs.slow_tick matches 8 run function ancient_artifacts:sculk_heart/heart/beat
    execute if score #20 tbs.slow_tick matches 9 as @e[type=item_display,tag=sculk_heart,distance=..5] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.25f,1.25f,1.25f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:10,start_interpolation:0}
    particle minecraft:entity_effect{color:[0.0039, 0.0980, 0.2117,1.0]} ~ ~ ~ 0.8 0.8 0.8 0.1 1
    execute if score #3 tbs.slow_tick matches 3 at @e[type=item_display,tag=sculk_heart,distance=..5] run particle minecraft:dust{color:[0.1725, 0.6941, 0.7490],scale:3} ~ ~ ~ 0.2 0.2 0.2 0 3 force

#-------------------------------------------------------
## During waves
#-------------------------------------------------------

execute if score @s heart_state matches 2:
    execute as @e[type=warden,distance=..20] at @s run function ancient_artifacts:sculk_heart/delete_warden

    execute if score @s animation matches 0..20:
        data modify storage ancient_artifacts:wave UUID1 set from entity @s UUID[0]
        data modify storage ancient_artifacts:wave UUID2 set from entity @s UUID[1]
        data modify storage ancient_artifacts:wave UUID3 set from entity @s UUID[2]
        data modify storage ancient_artifacts:wave UUID4 set from entity @s UUID[3]
        execute store result storage ancient_artifacts:wave animation int 1 run scoreboard players get @s animation
        function ancient_artifacts:sculk_heart/waves/check with storage ancient_artifacts:wave
    
    execute if score @s animation matches 21.. run scoreboard players remove @s animation 1

#-------------------------------------------------------
## Animation End
#-------------------------------------------------------

execute if score @s heart_state matches 3:
    execute if score @s animation matches 100 run playsound entity.warden.sonic_charge block @a ~ ~ ~ 1 0.7
    execute if score @s animation matches 50:
        playsound entity.warden.sonic_boom block @a ~ ~ ~ 1 1

        setblock ~ ~ ~ sculk_catalyst

        execute at @e[tag=sculk_heart,distance=..5]:
            particle sonic_boom ~ ~ ~ 0.2 0.2 0.2 0 5 force
            particle minecraft:block{block_state:"minecraft:sculk"} ~ ~ ~ 0.3 0.3 0.3 0 50 force
        
        summon breeze_wind_charge ~ ~ ~ {Motion:[0.0d, -5.0d, 0.0d]}
        summon breeze_wind_charge ~ ~ ~ {Motion:[0.0d, -5.0d, 0.0d]}
        
        execute at @e[tag=sculk_heart,distance=0.1..5] run setblock ~ ~ ~ air
        execute at @e[tag=sculk_heart,distance=0.1..5,tag=!no_chest]:
            summon marker ~ ~ ~ {Tags:[artifact_chest_place,deep_dark]}
        
        execute as @e[type=marker,tag=artifact_chest_place] at @s run function ancient_artifacts:artifact_chests/place
        advancement grant @a[distance=..32] only ancient_artifacts:main/defeat_sculk_heart
        
        function ancient_artifacts:sculk_heart/bossbar/reset with storage ancient_artifacts:wave

        kill @e[tag=sculk_heart,distance=..5]
    
    execute if score @s animation matches 1.. run scoreboard players remove @s animation 1