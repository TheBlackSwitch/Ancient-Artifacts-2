execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s food matches 20 if score @s artifact matches 1 if score @s delta_health matches 1.. if predicate theblackswitch:v2.0/patch-2/rand/10 run function ancient_artifacts:artifacts/overworld/healing_amulet/heal_2
execute if score @s food matches 20 if score @s artifact matches 2 if score @s delta_health matches 1.. if predicate theblackswitch:v2.0/patch-2/rand/22 run function ancient_artifacts:artifacts/overworld/healing_amulet/heal_2
execute if score @s food matches 20 if score @s artifact matches 3 if score @s delta_health matches 1.. if predicate theblackswitch:v2.0/patch-2/rand/27 run function ancient_artifacts:artifacts/overworld/healing_amulet/heal_3
execute if score @s food matches 20 if score @s artifact matches 4..5 if score @s delta_health matches 1.. if predicate theblackswitch:v2.0/patch-2/rand/30 run function ancient_artifacts:artifacts/overworld/healing_amulet/heal_3
execute if score @s food matches 20 if score @s artifact matches 5 unless predicate {condition: "minecraft:entity_properties", entity: "this", predicate: {effects: {"minecraft:regeneration": {}}}} run effect give @s regeneration 5 0 false
tag @s add healing_amulet
