execute as @e[tag=villager_trade] run data modify entity @s Items set value []
kill @e[tag=villager_trade]

##Gen trade
execute store result storage ancient_artifacts:smith trade.maxUses int 1 run random value 5..10
execute store result storage ancient_artifacts:smith trade.xp int 1 run random value 5..10
execute store result storage ancient_artifacts:smith trade.priceMultiplier int 0.01 run random value 5..20
execute run summon chest_minecart ~ ~ ~ {Tags:[villager_trade]}

$scoreboard players set .artifact_level temp $(level)

##Artifact
#Buy
execute if score .artifact_level temp matches 1 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:artifacts/common
execute if score .artifact_level temp matches 2 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:artifacts/common
execute if score .artifact_level temp matches 3 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:artifacts/uncommon
execute if score .artifact_level temp matches 4 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:artifacts/rare
execute if score .artifact_level temp matches 5 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:artifacts/unique
data remove storage ancient_artifacts:smith trade.buyB
data modify storage ancient_artifacts:smith trade.buy set from entity @e[tag=villager_trade,limit=1] Items[0]
data remove storage ancient_artifacts:smith trade.buy.components.minecraft:custom_data

#Sell
execute if score .artifact_level temp matches 1..3 run data modify storage ancient_artifacts:smith trade.sell set value {id:"minecraft:emerald"}
execute if score .artifact_level temp matches 1 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 20..35
execute if score .artifact_level temp matches 2 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 35..50
execute if score .artifact_level temp matches 3 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 50..64
execute if score .artifact_level temp matches 4..5 run data modify storage ancient_artifacts:smith trade.sell set value {id:"minecraft:emerald_block"}
execute if score .artifact_level temp matches 4 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 8..12
execute if score .artifact_level temp matches 5 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 12..16