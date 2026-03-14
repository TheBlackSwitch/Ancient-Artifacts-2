execute store result score .damage temp run data get entity @s SelectedItem.components."minecraft:damage"

$scoreboard players set .unbreaking temp $(damage)
function ancient_artifacts:utilities/unbreaking

$execute store result storage item damage int 1 run scoreboard players add .damage temp $(damage)

function ancient_artifacts:utilities/set_damage with storage item
