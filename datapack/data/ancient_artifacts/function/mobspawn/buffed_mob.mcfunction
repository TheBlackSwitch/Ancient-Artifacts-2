
##Armor
execute unless items entity @s armor.head * run loot replace entity @s armor.head loot ancient_artifacts:equipment/armor/head
loot replace entity @s armor.chest loot ancient_artifacts:equipment/armor/chest
loot replace entity @s armor.legs loot ancient_artifacts:equipment/armor/legs
loot replace entity @s armor.feet loot ancient_artifacts:equipment/armor/feet

##Zombies
execute if entity @s[type=#ancient_artifacts:zombie] run loot replace entity @s weapon.mainhand loot ancient_artifacts:equipment/hand/zombie

##Skeletons
execute if entity @s[type=#ancient_artifacts:has_bow] run item replace entity @s weapon.mainhand with bow
execute if entity @s[type=#ancient_artifacts:skeleton] run loot replace entity @s weapon.mainhand loot ancient_artifacts:equipment/hand/skeleton
execute if entity @s[type=#ancient_artifacts:skeleton] run loot replace entity @s weapon.offhand loot ancient_artifacts:equipment/offhand/skeleton
execute if entity @s[type=#ancient_artifacts:skeleton] run data merge entity @s {drop_chances:{offhand:0},DeathLootTable:"ancient_artifacts:equipment/drops/skeleton"}

tag @s remove buffed
execute unless entity @s[tag=super_buffed] run return fail

execute store result score .rand temp run random value 1..8
execute if score .rand temp matches 1 run effect give @s speed infinite 0 false
execute if score .rand temp matches 2 run effect give @s speed infinite 1 false
execute if score .rand temp matches 3 run effect give @s jump_boost infinite 0 false
execute if score .rand temp matches 4 run effect give @s jump_boost infinite 1 false
execute if score .rand temp matches 5 run effect give @s strength infinite 0 false
execute if score .rand temp matches 6 run effect give @s strength infinite 1 false
execute if score .rand temp matches 7 run effect give @s infested infinite 0 false
execute if score .rand temp matches 8 run effect give @s oozing infinite 0 false