execute if score #double temp matches 1 run summon experience_orb ~ ~0.5 ~ {Value:10}
summon experience_orb ~ ~ ~ {Value:10}
particle minecraft:entity_effect{color:[0.3, 0.4, 1.0, 1.0]} ~ ~ ~ 0.1 0.1 0.1 0.1 50 force
scoreboard players set #found temp 1
scoreboard players add @s bonus_xp 1