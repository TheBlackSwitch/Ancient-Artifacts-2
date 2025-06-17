
execute as @a[scores={audio_book=1}] at @s run function ancient_artifacts:dungeon/catalog_audio_book/play
execute as @a[scores={audio_book=2}] at @s run function ancient_artifacts:dungeon/catalog_audio_book/stop

scoreboard players reset @a audio_book
execute as @a[predicate=ancient_artifacts:holding_dungeon_catalog] run scoreboard players enable @s audio_book

execute as @a[scores={playing_audio_book=1..}] run scoreboard players remove @s playing_audio_book 1