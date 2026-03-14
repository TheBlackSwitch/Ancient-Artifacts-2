function ancient_artifacts:artifact_smith/generate_artifact_trade {level: 1}
data modify entity @s Offers.Recipes[0] set from storage ancient_artifacts:smith trade
execute as @e[tag=villager_trade] run data modify entity @s Items set value []
kill @e[tag=villager_trade]
execute if score @s smith_level matches 1 run return fail
function ancient_artifacts:artifact_smith/generate_artifact_trade {level: 2}
data modify entity @s Offers.Recipes[2] set from storage ancient_artifacts:smith trade
execute as @e[tag=villager_trade] run data modify entity @s Items set value []
kill @e[tag=villager_trade]
execute if score @s smith_level matches 2 run return fail
function ancient_artifacts:artifact_smith/generate_artifact_trade {level: 3}
data modify entity @s Offers.Recipes[4] set from storage ancient_artifacts:smith trade
execute as @e[tag=villager_trade] run data modify entity @s Items set value []
kill @e[tag=villager_trade]
execute if score @s smith_level matches 3 run return fail
function ancient_artifacts:artifact_smith/generate_artifact_trade {level: 4}
data modify entity @s Offers.Recipes[6] set from storage ancient_artifacts:smith trade
execute as @e[tag=villager_trade] run data modify entity @s Items set value []
kill @e[tag=villager_trade]
execute if score @s smith_level matches 4 run return fail
function ancient_artifacts:artifact_smith/generate_artifact_trade {level: 5}
data modify entity @s Offers.Recipes[8] set from storage ancient_artifacts:smith trade
execute as @e[tag=villager_trade] run data modify entity @s Items set value []
kill @e[tag=villager_trade]
