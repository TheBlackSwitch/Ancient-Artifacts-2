#Gen rand nbr
$execute store result score .2 temp run random value 1..$(rand_max)
execute store result storage ancient_artifacts:parchment rand int 1 run scoreboard players remove .2 temp 1

function ancient_artifacts:ancient_parchment/generate/veryfy_rarity with storage ancient_artifacts:parchment