advancement revoke @s only ancient_artifacts:cheap_recipe/white_wool
scoreboard players set @s random 0
execute if entity @s[tag=builders_ring_1] store result score @s random run random value 1..4
execute if entity @s[tag=builders_ring_2] store result score @s random run random value 1..2
execute if entity @s[tag=builders_ring_3] if predicate theblackswitch:__version__/__patch__/rand/75 run scoreboard players set @s random 1
execute if score @s random matches 1 run give @s white_wool
execute if score @s random matches 1 run scoreboard players add @s recipe_bonuses 1