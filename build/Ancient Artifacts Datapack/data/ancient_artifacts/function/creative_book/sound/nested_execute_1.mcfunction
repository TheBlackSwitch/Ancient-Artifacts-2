execute unless entity @s[gamemode=creative] run return run function ancient_artifacts:creative_book/sound/nested_return_0
execute if score @s creative_book_sound matches 10 run function ancient_artifacts:creative_book/sound/nested_execute_0
execute if score @s creative_book_sound matches 6 run playsound block.decorated_pot.insert master @s ~ ~ ~ 1 1.7
scoreboard players remove @s creative_book_sound 1
