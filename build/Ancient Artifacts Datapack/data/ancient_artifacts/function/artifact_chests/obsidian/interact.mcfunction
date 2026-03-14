execute if entity @s[tag=opened] run return fail
execute unless data entity @s interaction run return fail
execute if score @s animation matches 1.. run return fail
tag @s add checked
data modify entity @s response set value 1b
function ancient_artifacts:artifact_chests/obsidian/interact/nested_execute_0
execute if score @s amethyst_count matches 1 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data~{smithed: {ignore: {crafting: true}}}, !custom_data~{compound: true}] run function ancient_artifacts:artifact_chests/obsidian/interact/nested_execute_2
execute if score @s amethyst_count matches 2 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data~{smithed: {ignore: {crafting: true}}}, !custom_data~{compound: true}] run function ancient_artifacts:artifact_chests/obsidian/interact/nested_execute_4
execute if score @s amethyst_count matches 3 run scoreboard players set @s animation 35
