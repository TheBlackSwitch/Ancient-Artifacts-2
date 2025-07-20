
execute unless entity @s[gamemode=creative] run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
execute unless entity @s[gamemode=creative] run tellraw @s [{"text":"[Ancient Artifacts]: ","color":"light_purple"},{"text":"You need to be in creative mode to use that!","color":"red"}]
execute unless entity @s[gamemode=creative] run return run scoreboard players reset @s creative_book_sound


execute if score @s creative_book_sound matches 10 run dialog show @s ancient_artifacts:creative_book
execute if score @s creative_book_sound matches 10 run item modify entity @s weapon.mainhand ancient_artifacts:fix_creative_stack

execute if score @s creative_book_sound matches 10 run playsound block.decorated_pot.insert master @s ~ ~ ~ 1 1.3
execute if score @s creative_book_sound matches 6 run playsound block.decorated_pot.insert master @s ~ ~ ~ 1 1.7

scoreboard players remove @s creative_book_sound 1