tag @s add deflected
$execute if predicate ancient_artifacts:random/$(chance) run return fail
execute store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] -1000
execute store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] -1000
execute store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] -1000

execute at @s run particle minecraft:gust ~ ~ ~ 0.2 0.2 0.2 0.3 3 normal
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 10 normal
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 5 1.5

scoreboard players add @a[predicate=theblackswitch:matches_search_id] deflected 1