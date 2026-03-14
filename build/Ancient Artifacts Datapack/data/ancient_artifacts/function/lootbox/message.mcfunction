scoreboard players reset @s join
execute unless score @s lootbox_count matches 1.. run return fail
tag @s add show_lootbox_message
schedule function ancient_artifacts:lootbox/delayed_message 600
