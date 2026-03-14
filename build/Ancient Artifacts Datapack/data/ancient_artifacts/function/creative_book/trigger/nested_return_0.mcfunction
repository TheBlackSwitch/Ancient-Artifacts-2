playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
tellraw @s [{text: "[Ancient Artifacts]: ", color: "light_purple"}, {text: "You need to be in creative mode to use that!", color: "red"}]
scoreboard players reset @s aa.creative_book
