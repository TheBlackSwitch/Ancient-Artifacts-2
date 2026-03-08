execute if score @s raycast_limit matches 400.. run return fail
scoreboard players add @s raycast_limit 1
execute store result storage ancient_artifacts:crop X int 1 run random value -5..5
execute store result storage ancient_artifacts:crop Y int 1 run random value -2..2
execute store result storage ancient_artifacts:crop Z int 1 run random value -5..5
execute store success score .1 temp run function ancient_artifacts:artifacts/overworld/farmers_boots/check_crop with storage ancient_artifacts:crop

execute if score .1 temp matches 0 run function ancient_artifacts:artifacts/overworld/farmers_boots/find_crop