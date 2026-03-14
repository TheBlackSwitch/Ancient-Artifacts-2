execute as @a[scores={audio_book=1}] at @s run function ancient_artifacts:dungeon/catalog_audio_book/play
execute as @a[scores={audio_book=2}] at @s run function ancient_artifacts:dungeon/catalog_audio_book/stop
scoreboard players reset @a audio_book
execute as @a[predicate=ancient_artifacts:holding_dungeon_catalog] run scoreboard players enable @s audio_book
execute as @a[scores={playing_audio_book=1..}] run scoreboard players remove @s playing_audio_book 1
execute if score #plz_no_generate tbs.server_data matches 1 run return fail
execute if score #40 tbs.slow_tick matches 3 as @e[type=marker, tag=dungeon_entrance, tag=!stairs_generated] at @s run function ancient_artifacts:dungeon/entrance/generate
execute if score #20 tbs.slow_tick = #20 tbs.random_delay run function ancient_artifacts:dungeon/tick/nested_execute_0
execute if score #10 tbs.slow_tick = #10 tbs.random_delay as @a at @s run function ancient_artifacts:dungeon/effects/ambient_additions
execute if score #20 tbs.slow_tick matches 6 as @a at @s run function ancient_artifacts:dungeon/tick/nested_execute_2
execute if score #5 tbs.slow_tick matches 5 as @e[tag=prior_explorer, tag=interaction] at @s run function ancient_artifacts:dungeon/prior_explorer/tick
execute if score #20 tbs.slow_tick matches 5 run function ancient_artifacts:dungeon/trigger
execute if score #10 tbs.slow_tick matches 10 as @e[type=marker, tag=dungeon_center] at @s if entity @a[distance=..20] run function ancient_artifacts:dungeon/cutscene/check_enable
execute if score #2 tbs.slow_tick matches 2 as @e[type=marker, tag=dungeon_center, tag=cutscene, tag=!finished] run function ancient_artifacts:dungeon/cutscene/search_uuid
