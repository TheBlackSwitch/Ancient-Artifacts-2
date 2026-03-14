execute store result score .damage temp run data get entity @s equipment.offhand.components."minecraft:damage"

$scoreboard players set .unbreaking temp $(damage)
function ancient_artifacts:utilities/unbreaking_offhand

$execute store result storage item damage int 1 run scoreboard players add .damage temp $(damage)

function ancient_artifacts:utilities/set_damage_offhand with storage item
