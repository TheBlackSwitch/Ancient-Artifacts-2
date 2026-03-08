item replace entity @s armor.head with air
data modify entity @s Offers.Recipes set value []
data modify entity @s VillagerData set value {profession:"none",level:1}
data remove entity @s CustomName
tag @s remove checked
tag @s remove artifact_smith
tag @s remove no_restock
tag @s remove smithed.entity
tag @s add reset
scoreboard players reset @s smith_level