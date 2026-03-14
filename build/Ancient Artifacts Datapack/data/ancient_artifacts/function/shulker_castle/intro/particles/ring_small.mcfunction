execute if entity @s[tag=common] run function ancient_artifacts:artifact_cauldron/recipes/crafting/particle/common
execute if entity @s[tag=uncommon] run function ancient_artifacts:artifact_cauldron/recipes/crafting/particle/uncommon
execute if entity @s[tag=rare] run function ancient_artifacts:artifact_cauldron/recipes/crafting/particle/rare
execute if entity @s[tag=unique] run function ancient_artifacts:artifact_cauldron/recipes/crafting/particle/unique
rotate @s ~2 ~
scoreboard players add @s lifetime 1
execute if score @s lifetime matches 77.. run kill @s
