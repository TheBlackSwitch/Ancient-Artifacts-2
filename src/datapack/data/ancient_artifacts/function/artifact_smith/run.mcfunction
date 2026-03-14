execute if entity @s[tag=INIT] run item replace entity @s armor.head with gunpowder[minecraft:item_model="ancient_artifacts:entity/artifact_smith"]
execute if entity @s[tag=INIT] run data merge entity @s {drop_chances:{head:0,chest:0,legs:0,feet:0},CustomName:{"text":"Artifact Smith","bold":false,"color":"dark_purple"},CustomNameVisible:0b}
execute if entity @s[tag=INIT] run tag @s remove INIT

execute if score #10 tbs.slow_tick matches 10 store result score .cauldron temp run function ancient_artifacts:artifact_smith/check_cauldron
execute if score #10 tbs.slow_tick matches 10 unless score .cauldron temp matches 1 run tag @s add no_restock
execute if score #10 tbs.slow_tick matches 10 if score .cauldron temp matches 1 run tag @s remove no_restock

execute if entity @s[tag=no_restock] run data modify entity @s RestocksToday set value 2

execute store result score .2 temp run data get entity @s VillagerData.level
execute unless score @s smith_level = .2 temp run function ancient_artifacts:artifact_smith/update_trades