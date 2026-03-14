tellraw @s {text: "Stopped playing all audio books", color: "red", underlined: true}
scoreboard players set @s playing_audio_book 0
stopsound @s * ancient_artifacts:audio_book.dungeon_catalog
playsound ui.button.click master @s ~ ~ ~ 1 1
