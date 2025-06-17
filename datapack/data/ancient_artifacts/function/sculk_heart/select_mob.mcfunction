scoreboard players set @s raycast_limit 0
function ancient_artifacts:sculk_heart/set_pos
execute store result score .random temp run random value 1..13

execute if score .random temp matches 1 run data modify storage ancient_artifacts:spawn type set value "minecraft:witch"
execute if score .random temp matches 2..4 run data modify storage ancient_artifacts:spawn type set value "minecraft:bogged"
execute if score .random temp matches 5..7 run data modify storage ancient_artifacts:spawn type set value "minecraft:skeleton"
execute if score .random temp matches 8..10 run data modify storage ancient_artifacts:spawn type set value "minecraft:zombie"
execute if score .random temp matches 11..13 run data modify storage ancient_artifacts:spawn type set value "minecraft:husk"

data modify storage ancient_artifacts:spawn UUID1 set from storage ancient_artifacts:wave UUID1
data modify storage ancient_artifacts:spawn UUID2 set from storage ancient_artifacts:wave UUID2
data modify storage ancient_artifacts:spawn UUID3 set from storage ancient_artifacts:wave UUID3
data modify storage ancient_artifacts:spawn UUID4 set from storage ancient_artifacts:wave UUID4

function ancient_artifacts:sculk_heart/place_mob with storage ancient_artifacts:spawn