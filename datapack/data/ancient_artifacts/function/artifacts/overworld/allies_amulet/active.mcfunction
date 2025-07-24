execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

function ancient_artifacts:tag_tamed

## All Level 1
execute if score @s artifact matches 33..36 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:regeneration"}]} run effect give @s regeneration 10 0
execute if score @s artifact matches 34..36 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:strength"}]} run effect give @s strength 10 0
execute if score @s artifact matches 35..36 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:speed"}]} run effect give @s speed 10 0
execute if score @s artifact matches 36 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:jump_boost"}]} run effect give @s jump_boost 10 0

## All Level 2
execute if score @s artifact matches 37 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:regeneration"}]} run effect give @s regeneration 10 1
execute if score @s artifact matches 37 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:strength"}]} run effect give @s strength 10 1
execute if score @s artifact matches 37 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:speed"}]} run effect give @s speed 10 1
execute if score @s artifact matches 37 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:jump_boost"}]} run effect give @s jump_boost 10 1

## All Level 3
execute if score @s artifact matches 38 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:regeneration"}]} run effect give @s regeneration 10 2
execute if score @s artifact matches 38 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:strength"}]} run effect give @s strength 10 2
execute if score @s artifact matches 38 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:speed"}]} run effect give @s speed 10 2
execute if score @s artifact matches 38 as @e[tag=tamed,distance=..20] unless entity @s[tag=necromanced,tag=controller] unless data entity @s {active_effects:[{id:"minecraft:jump_boost"}]} run effect give @s jump_boost 10 2


## Happy Ghast Speed
execute if score @s artifact matches 35..36 as @e[type=happy_ghast,distance=..20] run attribute @s flying_speed modifier add allies_amulet 0.3 add_multiplied_total
execute if score @s artifact matches 37 as @e[type=happy_ghast,distance=..20] run attribute @s flying_speed modifier add allies_amulet 0.6 add_multiplied_total
execute if score @s artifact matches 38 as @e[type=happy_ghast,distance=..20] run attribute @s flying_speed modifier add allies_amulet 0.9 add_multiplied_total


execute if score .10 slow_tick matches 10 store result score .1 temp if entity @e[tag=tamed,distance=..20,type=wolf]
execute if score .10 slow_tick matches 10 if score .1 temp matches 30.. run advancement grant @s only ancient_artifacts:artifacts/overworld/allies_expert