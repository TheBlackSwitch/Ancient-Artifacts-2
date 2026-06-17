advancement revoke @s only ancient_artifacts:cheap_recipe/polished_blackstone
advancement revoke @s only ancient_artifacts:cheap_recipe/polished_blackstone_stonecutting
scoreboard players set @s random 0
execute if entity @s[tag=builders_ring_1] store result score @s random run random value 1..4
execute if entity @s[tag=builders_ring_2] store result score @s random run random value 1..2
execute if entity @s[tag=builders_ring_3] if predicate theblackswitch:v2.0/patch-3/rand/75 run scoreboard players set @s random 1
execute if score @s random matches 1 run give @s polished_blackstone
execute if score @s random matches 1 run scoreboard players add @s recipe_bonuses 1
