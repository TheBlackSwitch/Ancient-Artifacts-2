$execute store result score #rand temp run random value 1..$(rand_max)
execute store result storage ancient_artifacts:parchment rand int 1 run scoreboard players remove #rand temp 1
scoreboard players add #loop_count temp 1
execute if score #loop_count temp matches 1000.. run return fail
return run function ancient_artifacts:ancient_parchment/generate/rarity/verify_relic with storage ancient_artifacts:parchment
