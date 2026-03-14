playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
tellraw @s [{text: "[Ancient Artifacts]: ", color: "light_purple"}, {text: "You can't use that on here!", color: "red"}]
scoreboard players reset @s aa.creative_book
