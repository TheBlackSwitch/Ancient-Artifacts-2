playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score @s playing_audio_book matches 1.. run return 1
scoreboard players set @s playing_audio_book 7600
tellraw @s {"text":"Now playing Dungeon Catalog (audio book) - theblackswitch","color":"yellow","underlined": true}
playsound ancient_artifacts:audio_book.dungeon_catalog