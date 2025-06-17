execute if predicate ancient_artifacts:random/25 run return run tag @s remove buffed_weak

##Armor
execute if predicate ancient_artifacts:random/75 unless items entity @s armor.head * run loot replace entity @s armor.head loot ancient_artifacts:equipment/armor/head
execute if predicate ancient_artifacts:random/75 run loot replace entity @s armor.chest loot ancient_artifacts:equipment/armor/chest
execute if predicate ancient_artifacts:random/75 run loot replace entity @s armor.legs loot ancient_artifacts:equipment/armor/legs
execute if predicate ancient_artifacts:random/75 run loot replace entity @s armor.feet loot ancient_artifacts:equipment/armor/feet

##Zombies
execute if entity @s[type=#ancient_artifacts:zombie] if predicate ancient_artifacts:random/75 run loot replace entity @s weapon.mainhand loot ancient_artifacts:equipment/hand/zombie

##Skeletons
execute if entity @s[type=#ancient_artifacts:has_bow] run item replace entity @s weapon.mainhand with bow
execute if entity @s[type=#ancient_artifacts:skeleton] if predicate ancient_artifacts:random/75 run loot replace entity @s weapon.mainhand loot ancient_artifacts:equipment/hand/skeleton
execute if entity @s[type=#ancient_artifacts:skeleton] if predicate ancient_artifacts:random/75 run loot replace entity @s weapon.offhand loot ancient_artifacts:equipment/offhand/skeleton
execute if entity @s[type=#ancient_artifacts:skeleton,nbt=!{DeathLootTable:"minecraft:empty"}] if predicate ancient_artifacts:random/75 run data merge entity @s {drop_chances:{offhand:0},DeathLootTable:"ancient_artifacts:equipment/drops/skeleton"}

tag @s remove buffed_weak