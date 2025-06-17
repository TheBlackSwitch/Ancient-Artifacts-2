#--------------
# - TRADE 1 -
#--------------

##Reset
scoreboard players operation @s smith_level = .2 temp
data remove storage ancient_artifacts:smith trade
execute as @e[tag=villager_trade] run data modify entity @s Items set value []

execute unless score @s smith_level matches 1..5 run scoreboard players set @s smith_level 1


##Remove vanilla trades
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

##Artifacts
execute if score @s smith_level matches 1 run function ancient_artifacts:artifact_smith/generate_artifact_trade {level:1}
execute if score @s smith_level matches 2 run function ancient_artifacts:artifact_smith/generate_artifact_trade {level:2}
execute if score @s smith_level matches 3 run function ancient_artifacts:artifact_smith/generate_artifact_trade {level:3}
execute if score @s smith_level matches 4 run function ancient_artifacts:artifact_smith/generate_artifact_trade {level:4}
execute if score @s smith_level matches 5 run function ancient_artifacts:artifact_smith/generate_artifact_trade {level:5}

##Apply trade
data modify entity @s Offers.Recipes append from storage ancient_artifacts:smith trade

#--------------
# - TRADE 2 -
#--------------

##Reset
data remove storage ancient_artifacts:smith trade
execute as @e[tag=villager_trade] run data modify entity @s Items set value []

##Gen trade
execute store result storage ancient_artifacts:smith trade.maxUses int 1 run random value 10..20
execute store result score .4 temp run random value 1..6
scoreboard players operation .4 temp *= @s smith_level
execute store result storage ancient_artifacts:smith trade.xp int 1 run scoreboard players operation .4 temp *= @s smith_level
execute store result storage ancient_artifacts:smith trade.priceMultiplier int 0.01 run random value 5..15

#random trade
execute store result score .3 temp if score @s smith_level matches 1 run random value 2..7
execute store result score .3 temp if score @s smith_level matches 2..5 run random value 1..7
execute if score @s smith_level matches 5 run scoreboard players set .3 temp 8

##Upgrades
execute if score .3 temp matches 1 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/essence/all
execute if score .3 temp matches 1 run data modify storage ancient_artifacts:smith trade.buyB set from entity @e[tag=villager_trade,limit=1] Items[0]
execute if score .3 temp matches 1 if score @s smith_level matches 4..5 store result storage ancient_artifacts:smith trade.buyB.count int 1 run random value 3..5
execute if score .3 temp matches 1 if score @s smith_level matches 2..3 store result storage ancient_artifacts:smith trade.buyB.count int 1 run random value 1..3


#emeralds
execute if score .3 temp matches 1 if score @s smith_level matches 2..3 run data modify storage ancient_artifacts:smith trade.buy set value {id:"minecraft:emerald"}
execute if score .3 temp matches 1 if score @s smith_level matches 4..5 run data modify storage ancient_artifacts:smith trade.buy set value {id:"minecraft:emerald_block"}
execute if score .3 temp matches 1 if score @s smith_level matches 2..3 store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 50..64
execute if score .3 temp matches 1 if score @s smith_level matches 4..5 store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 7..14

#trade
execute if score .3 temp matches 1 if score @s smith_level matches 2..3 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/artifact_upgrade
execute if score .3 temp matches 1 if score @s smith_level matches 4..5 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/heavy_artifact_upgrade
execute if score .3 temp matches 1 run data modify storage ancient_artifacts:smith trade.sell set from entity @e[tag=villager_trade,limit=1] Items[0]

##Compounds
#emeralds
execute if score .3 temp matches 2 run data modify storage ancient_artifacts:smith trade.buy set value {id:"minecraft:emerald"}
execute if score .3 temp matches 2 if score @s smith_level matches 1..2 store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 5..10
execute if score .3 temp matches 2 if score @s smith_level matches 3..4 store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 1..7
#trade
execute if score .3 temp matches 2 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/compound
execute if score .3 temp matches 2 run data modify storage ancient_artifacts:smith trade.sell set from entity @e[tag=villager_trade,limit=1] Items[0]
execute if score .3 temp matches 2 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 1..3
execute if score .3 temp matches 2 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{type:"deep dark"}}}}} store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 10..18

##Ancient Altar
#emeralds
execute if score .3 temp matches 3 run data modify storage ancient_artifacts:smith trade.buy set value {id:"minecraft:emerald"}
execute if score .3 temp matches 3 store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 10..20
#trade
execute if score .3 temp matches 3 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:block/ancient_altar
execute if score .3 temp matches 3 run data modify storage ancient_artifacts:smith trade.sell set from entity @e[tag=villager_trade,limit=1] Items[0]

##Artifact Blend
#emeralds
execute if score .3 temp matches 4 run data modify storage ancient_artifacts:smith trade.sell set value {id:"minecraft:emerald"}
execute if score .3 temp matches 4 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 10..20
#trade
execute if score .3 temp matches 4 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/artifact_blend
execute if score .3 temp matches 4 run data modify storage ancient_artifacts:smith trade.buy set from entity @e[tag=villager_trade,limit=1] Items[0]

##Essences
#blend
execute if score .3 temp matches 5 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/artifact_blend
execute if score .3 temp matches 5 run data modify storage ancient_artifacts:smith trade.buyB set from entity @e[tag=villager_trade,limit=1] Items[0]
execute if score .3 temp matches 5 store result storage ancient_artifacts:smith trade.buyB.count int 1 run random value 1..3
#essence
execute if score .3 temp matches 5 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/essence
execute if score .3 temp matches 5 run data modify storage ancient_artifacts:smith trade.sell set from entity @e[tag=villager_trade,limit=1] Items[0]
execute if score .3 temp matches 5 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 1..3
#emeralds
execute if score .3 temp matches 5 run data modify storage ancient_artifacts:smith trade.buy set value {id:"minecraft:emerald"}
execute if score .3 temp matches 5 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:1b}}}}} store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 10..20
execute if score .3 temp matches 5 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:2b}}}}} store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 20..30
execute if score .3 temp matches 5 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:3b}}}}} store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 30..40
execute if score .3 temp matches 5 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:4b}}}}} store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 40..50

##Templates
#template
execute if score .3 temp matches 6 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/template
execute if score .3 temp matches 6 run data modify storage ancient_artifacts:smith trade.sell set from entity @e[tag=villager_trade,limit=1] Items[0]
execute if score .3 temp matches 6 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 1..2

#essence
execute if score .3 temp matches 6 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:1b}}}}} run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/essence/common
execute if score .3 temp matches 6 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:2b}}}}} run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/essence/uncommon
execute if score .3 temp matches 6 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:3b}}}}} run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/essence/rare
execute if score .3 temp matches 6 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:4b}}}}} run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/essence/unique
execute if score .3 temp matches 6 run data modify storage ancient_artifacts:smith trade.buyB set from entity @e[tag=villager_trade,limit=1] Items[0]
execute if score .3 temp matches 6 run data modify storage ancient_artifacts:smith trade.buyB.count set from storage ancient_artifacts:smith trade.sell.count

#emeralds
execute if score .3 temp matches 6 run data modify storage ancient_artifacts:smith trade.buy set value {id:"minecraft:emerald"}
execute if score .3 temp matches 6 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:1b}}}}} store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 20..30
execute if score .3 temp matches 6 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:2b}}}}} store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 30..40
execute if score .3 temp matches 6 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:3b}}}}} store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 40..50
execute if score .3 temp matches 6 if data storage ancient_artifacts:smith {trade:{sell:{components:{"minecraft:custom_data":{level:4b}}}}} store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 50..60

##Artifact waste
#emeralds
execute if score .3 temp matches 7 run data modify storage ancient_artifacts:smith trade.sell set value {id:"minecraft:emerald"}
execute if score .3 temp matches 7 store result storage ancient_artifacts:smith trade.sell.count int 1 run random value 3..10
#upgrade
execute if score .3 temp matches 7 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/artifact_waste
execute if score .3 temp matches 7 run data modify storage ancient_artifacts:smith trade.buy set from entity @e[tag=villager_trade,limit=1] Items[0]

##Dungeon Map
#emeralds
execute if score .3 temp matches 8 run data modify storage ancient_artifacts:smith trade.buy set value {id:"minecraft:emerald"}
execute if score .3 temp matches 8 store result storage ancient_artifacts:smith trade.buy.count int 1 run random value 30..50

##template
execute if score .3 temp matches 8 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/essence/all
execute if score .3 temp matches 8 run data modify storage ancient_artifacts:smith trade.buyB set from entity @e[tag=villager_trade,limit=1] Items[0]
execute if score .3 temp matches 8 store result storage ancient_artifacts:smith trade.buyB.count int 1 run random value 1..5

#upgrade
execute if score .3 temp matches 8 run loot replace entity @e[tag=villager_trade,limit=1] container.0 loot ancient_artifacts:item/dungeon_map
execute if score .3 temp matches 8 run data modify storage ancient_artifacts:smith trade.sell set from entity @e[tag=villager_trade,limit=1] Items[0]

##Apply trade
data modify entity @s Offers.Recipes append from storage ancient_artifacts:smith trade

execute as @e[tag=villager_trade] run data modify entity @s Items set value []
kill @e[tag=villager_trade]