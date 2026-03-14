particle electric_spark ~ ~ ~ 0 0 0 0 1 force

##length
$scoreboard players set .101 temp $(length)
scoreboard players remove .101 temp 1
execute store result storage ancient_artifacts:lightning length int 1 run scoreboard players get .101 temp

execute unless score .101 temp matches 1.. run return 1

execute store result score .100 temp run random value 1..12
##left
execute if score .100 temp matches 1..2 rotated ~10 ~ positioned ^ ^ ^0.1 run function ancient_artifacts:ancient_altar/lightning_particle with storage ancient_artifacts:lightning

##right
execute if score .100 temp matches 3..4 rotated ~-10 ~ positioned ^ ^ ^0.1 run function ancient_artifacts:ancient_altar/lightning_particle with storage ancient_artifacts:lightning

##up
execute if score .100 temp matches 5 rotated ~ ~-5 positioned ^ ^ ^0.1 run function ancient_artifacts:ancient_altar/lightning_particle with storage ancient_artifacts:lightning

##down
execute if score .100 temp matches 6 rotated ~ ~5 positioned ^ ^ ^0.1 run function ancient_artifacts:ancient_altar/lightning_particle with storage ancient_artifacts:lightning

##down
execute if score .100 temp matches 7..12 positioned ^ ^ ^0.1 run function ancient_artifacts:ancient_altar/lightning_particle with storage ancient_artifacts:lightning





