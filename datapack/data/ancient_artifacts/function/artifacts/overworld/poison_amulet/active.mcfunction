execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
function ancient_artifacts:tag_tamed
execute if score .40 slow_tick matches 40 if score @s[scores={sneak=1..}] artifact matches 5 as @e[distance=0.01..5,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed] run effect give @s poison 2 0 false
execute if score .40 slow_tick matches 40 if score @s[scores={sneak=1..}] artifact matches 6 as @e[distance=0.01..10,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed] run effect give @s poison 2 0 false
execute if score .40 slow_tick matches 40 if score @s[scores={sneak=1..}] artifact matches 7 as @e[distance=0.01..10,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed] run effect give @s poison 2 1 false
execute if score .40 slow_tick matches 40 if score @s[scores={sneak=1..}] artifact matches 8 as @e[distance=0.01..20,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed] run effect give @s poison 2 2 false
execute if score .3 slow_tick matches 3 if score @s sneak matches 1.. as @e[distance=0.01..5,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed] at @s run particle minecraft:entity_effect{color:[0.3, 0.5, 0.3, 0.5]} ~ ~0.5 ~ 0.1 0.3 0.1 1 3
execute if score .3 slow_tick matches 3 if score @s sneak matches 1.. run particle minecraft:dust{color:[0.3, 0.5, 0.3],scale:4} ~ ~ ~ 0.1 0 0.1 1 1

execute if score @s[scores={sneak=1..}] artifact matches 5 store result score .1 temp if entity @e[distance=0.01..5,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed]
execute if score @s[scores={sneak=1..}] artifact matches 6..7 store result score .1 temp if entity @e[distance=0.01..10,type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed]
execute if score @s sneak matches 1.. if score .1 temp matches 10.. run advancement grant @s only ancient_artifacts:artifacts/overworld/poison_expert
