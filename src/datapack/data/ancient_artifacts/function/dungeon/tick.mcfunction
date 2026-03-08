
#-------------------------------------------------------
## Audio book stuff
#-------------------------------------------------------

execute as @a[scores={audio_book=1}] at @s run function ancient_artifacts:dungeon/catalog_audio_book/play
execute as @a[scores={audio_book=2}] at @s run function ancient_artifacts:dungeon/catalog_audio_book/stop

scoreboard players reset @a audio_book
execute as @a[predicate=ancient_artifacts:holding_dungeon_catalog] run scoreboard players enable @s audio_book

execute as @a[scores={playing_audio_book=1..}] run scoreboard players remove @s playing_audio_book 1


#-------------------------------------------------------
## Stop all generation if needed (eg: structure world)
#-------------------------------------------------------

execute if score #plz_no_generate tbs.server_data matches 1 run return fail

#-------------------------------------------------------
## Dungeon entrance
#-------------------------------------------------------

# Initial generation
execute if score #40 tbs.slow_tick matches 3 as @e[type=marker,tag=dungeon_entrance,tag=!stairs_generated] at @s run function ancient_artifacts:dungeon/entrance/generate

#-------------------------------------------------------
## Dungeon scares
#-------------------------------------------------------

execute if score #20 tbs.slow_tick = #20 tbs.random_delay:
    execute as @e[type=item_display,tag=scary_skeleton] at @s run function ancient_artifacts:dungeon/scares/scary_skeleton/tick
    execute as @e[type=marker,tag=scary_explosion] at @s run function ancient_artifacts:dungeon/scares/scary_explosion/tick
    execute as @e[type=marker,tag=zombie_tomb] at @s run function ancient_artifacts:dungeon/scares/zombie_tomb/tick
    execute as @e[type=marker,tag=skeleton_tomb] at @s run function ancient_artifacts:dungeon/scares/skeleton_tomb/tick

#-------------------------------------------------------
## Dungeon effects
#-------------------------------------------------------

execute if score #10 tbs.slow_tick = #10 tbs.random_delay as @a at @s run function ancient_artifacts:dungeon/effects/ambient_additions

# Enable effects if in dungeon
execute if score #20 tbs.slow_tick matches 6 as @a at @s:
    function ancient_artifacts:dungeon/effects/check_enable
    function ancient_artifacts:dungeon/effects/ambient_loop
    execute if score @s effect_type matches 0 run scoreboard players set @s ambient_timer 0

    # Reset the timers when joining the game
    execute if score @s player_left matches 1..:
        scoreboard players set @s ambient_timer 0
        scoreboard players set @s effect_delay 0

#-------------------------------------------------------
## Prior Explorer
#-------------------------------------------------------

execute if score #5 tbs.slow_tick matches 5 as @e[tag=prior_explorer,tag=interaction] at @s run function ancient_artifacts:dungeon/prior_explorer/tick

#-------------------------------------------------------
## Dungeon Generation
#-------------------------------------------------------

execute if score #20 tbs.slow_tick matches 5 run function ancient_artifacts:dungeon/trigger

#-------------------------------------------------------
## Cutscene
#-------------------------------------------------------

execute if score #10 tbs.slow_tick matches 10 as @e[type=marker,tag=dungeon_center] at @s if entity @a[distance=..20] run function ancient_artifacts:dungeon/cutscene/check_enable
execute if score #2 tbs.slow_tick matches 2 as @e[type=marker,tag=dungeon_center,tag=cutscene,tag=!finished] run function ancient_artifacts:dungeon/cutscene/search_uuid
