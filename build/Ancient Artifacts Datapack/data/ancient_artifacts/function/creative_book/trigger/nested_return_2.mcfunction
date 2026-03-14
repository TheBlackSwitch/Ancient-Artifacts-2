tellraw @s [{text: "[Ancient Artifacts]: ", color: "light_purple"}, {text: "Successfully gave you a creative book!", color: "green"}]
loot give @s loot ancient_artifacts:item/creative_book
scoreboard players reset @s aa.creative_book
