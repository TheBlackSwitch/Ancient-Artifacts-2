execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s sneak matches 1.. if score @s breath_power matches 60.. rotated ~ 0 run particle minecraft:dragon_breath ^ ^1.5 ^0.2 0.1 0 0.1 0.01 1 force
execute if score @s sneak matches 1.. if score @s breath_power matches 60.. rotated ~ 0 positioned ^ ^ ^4 if score #10 tbs.slow_tick matches 10 run function ancient_artifacts:artifacts/end/dragons_breath_circlet/summon
scoreboard players operation #search tbs.ID = @s tbs.ID
function ancient_artifacts:tag_tamed
execute if score @s sneak matches 1.. if score @s breath_power matches 60.. rotated ~ 0 positioned ^ ^ ^2 as @e[tag=!tamed, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, predicate=!theblackswitch:v2.0/patch-3/player_id/match_search, distance=..2] run function ancient_artifacts:utilities/damage_entity_by_search {damage: 3}
execute if score @s sneak matches 1.. if score @s breath_power matches 60.. if score @s artifact matches 150 run scoreboard players remove @s breath_power 60
execute if score @s sneak matches 1.. if score @s breath_power matches 60.. if score @s artifact matches 151 run scoreboard players remove @s breath_power 30
execute if score @s sneak matches 1.. if score @s breath_power matches 60.. if score @s artifact matches 152 run scoreboard players remove @s breath_power 15
execute unless score @s breath_power matches 2400 run scoreboard players add @s breath_power 1
tag @s add dragons_breath_circlet
