effect give @s regeneration 1 2 true
scoreboard players add @s healing_bonusses 1
particle minecraft:trial_spawner_detection ^0.1 ^0.5 ^ 0.1 0.5 0.5 0 5 force
playsound block.enchantment_table.use player @s ~ ~ ~ 0.5 2
playsound minecraft:block.trial_spawner.spawn_item_begin player @s ~ ~ ~ 1 1
