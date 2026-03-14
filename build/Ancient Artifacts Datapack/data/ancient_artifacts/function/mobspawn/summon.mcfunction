$execute unless data storage ancient_artifacts:spawn {mob:"minecraft:ominous_item_spawner"} run summon $(mob) ~$(X) ~$(Y) ~$(Z) {Tags:[mobspawned,INIT]}
$execute if data storage ancient_artifacts:spawn {mob:"minecraft:ominous_item_spawner"} positioned ~ ~3 ~ run summon minecraft:ominous_item_spawner ~$(X) ~$(Y) ~$(Z) {Tags:[mobspawned,INIT]}
$execute as @e[tag=mobspawned,tag=INIT] run data merge entity @s $(nbt)
$tag @e[tag=mobspawned,tag=INIT] add $(TAG)
tag @e[tag=mobspawned] remove INIT
scoreboard players remove @s count 1
execute positioned ~ ~ ~0.1 if score @s count matches 1.. run function ancient_artifacts:mobspawn/summon with storage ancient_artifacts:spawn
