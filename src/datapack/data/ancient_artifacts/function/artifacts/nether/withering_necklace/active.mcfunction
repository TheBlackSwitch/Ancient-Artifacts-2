execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

function ancient_artifacts:tag_tamed
execute if score #40 tbs.slow_tick matches 40 if score @s[scores={sneak=1..}] artifact matches 54 as @e[distance=0.01..5,type=!#ancient_artifacts:no_damage,tag=!smithed.strict,tag=!tamed,type=!player] run effect give @s wither 3 0 false
execute if score #40 tbs.slow_tick matches 40 if score @s[scores={sneak=1..}] artifact matches 55 as @e[distance=0.01..10,type=!#ancient_artifacts:no_damage,tag=!smithed.strict,tag=!tamed,type=!player] run effect give @s wither 3 0 false
execute if score #40 tbs.slow_tick matches 40 if score @s[scores={sneak=1..}] artifact matches 56 as @e[distance=0.01..10,type=!#ancient_artifacts:no_damage,tag=!smithed.strict,tag=!tamed,type=!player] run effect give @s wither 3 1 false
execute if score #40 tbs.slow_tick matches 40 if score @s[scores={sneak=1..}] artifact matches 57 as @e[distance=0.01..10,type=!#ancient_artifacts:no_damage,tag=!smithed.strict,tag=!tamed,type=!player] run effect give @s wither 3 2 false
execute if score #3 tbs.slow_tick matches 3 if score @s sneak matches 1.. run particle minecraft:dust{color:[0.2, 0.1, 0.1],scale:4} ~ ~ ~ 0.2 0 0.2 0 1

execute if score @s[scores={sneak=1..}] artifact matches 54 store result score .1 temp if entity @e[distance=0.01..5,type=!#ancient_artifacts:no_damage,tag=!smithed.strict,tag=!tamed]
execute if score @s[scores={sneak=1..}] artifact matches 44..56 store result score .1 temp if entity @e[distance=0.01..10,type=!#ancient_artifacts:no_damage,tag=!smithed.strict,tag=!tamed]
execute if score @s sneak matches 1.. if score .1 temp matches 30.. run advancement grant @s only ancient_artifacts:artifacts/nether/withering_expert