##No lootboxes
execute if score @s lootbox matches 1.. unless score @s lootbox_count matches 1.. run tellraw @s [{"text":"You haven't recieved any lootboxes yet. ","color": "red"},{"text":"Post a ","color":"light_purple"},{"text":"Suggestion","color":"blue","underlined": true,"click_event": {"action": "open_url","url": "https://forms.gle/jXbWrZavGcCTAgcN6"}},{"text":" or a ","color":"light_purple"},{"text":"Bug Report","color":"blue","underlined": true,"click_event": {"action": "open_url","url": "https://forms.gle/8ZiVNMDBiLiTAD8m9"}},{"text":" to be able to recieve a lootbox","color":"light_purple"}]
execute if score @s lootbox matches 1.. unless score @s lootbox_count matches 1.. at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 0

##Succes
execute if score @s lootbox matches 1.. if score @s lootbox_count matches 1.. run tellraw @s [{"text":"You've claimed ","color":"green"},{"score":{"objective":"lootbox_count","name": "@s"}}," lootboxes!"]
execute if score @s lootbox matches 1.. if score @s lootbox_count matches 1.. at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 1

scoreboard players reset @s lootbox
execute unless score @s lootbox_count matches 1.. run return fail

loot give @s loot ancient_artifacts:item/mystery_box/loot_box
scoreboard players remove @s lootbox_count 1
function ancient_artifacts:lootbox/trigger