execute as @a[scores={creative_book_sound=1..}] at @s:

    execute unless entity @s[gamemode=creative] run return:
        scoreboard players reset @s creative_book_sound
        playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
        tellraw @s [{"text":"[Ancient Artifacts]: ","color":"light_purple"},{"text":"You need to be in creative mode to use that!","color":"red"}]

    execute if score @s creative_book_sound matches 10:
        dialog show @s ancient_artifacts:creative_book
        item modify entity @s weapon.mainhand ancient_artifacts:fix_creative_stack
        playsound block.decorated_pot.insert master @s ~ ~ ~ 1 1.3

    execute if score @s creative_book_sound matches 6 run playsound block.decorated_pot.insert master @s ~ ~ ~ 1 1.7

    scoreboard players remove @s creative_book_sound 1

if entity @a[scores={creative_book_sound=1..}] run schedule function ancient_artifacts:creative_book/sound 1t replace