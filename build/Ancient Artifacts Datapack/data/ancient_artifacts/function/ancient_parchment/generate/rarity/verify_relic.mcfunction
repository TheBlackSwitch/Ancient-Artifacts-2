$data modify storage ancient_artifacts:parchment current_relic set from storage ancient_artifacts:relics $(selected_dim).list[$(rand)].relic
$data modify storage ancient_artifacts:parchment current_rarity set from storage ancient_artifacts:relics $(selected_dim).list[$(rand)]
execute store success score #is_dupe temp run function ancient_artifacts:ancient_parchment/generate/common/check_dupe_relic with storage ancient_artifacts:parchment
$execute unless data storage ancient_artifacts:parchment {current_rarity:{artifact:{level:$(rarity)}}} run scoreboard players set #is_dupe temp 1
execute if score #is_dupe temp matches 0 store result score #current temp run data get storage ancient_artifacts:parchment current
$execute if score #is_dupe temp matches 0 run data modify storage ancient_artifacts:parchment relics append from storage ancient_artifacts:relics $(selected_dim).list[$(rand)].relic
execute if score #is_dupe temp matches 0 store result storage ancient_artifacts:parchment current int 1 run scoreboard players remove #current temp 1
execute if score #is_dupe temp matches 0 if score #current temp matches 1.. run scoreboard players set #loop_count temp 0
execute if score #is_dupe temp matches 0 if score #current temp matches 1.. run return run function ancient_artifacts:ancient_parchment/generate/rarity/random_relic with storage ancient_artifacts:parchment
execute if score #is_dupe temp matches 0 run return 1
execute if score #is_dupe temp matches 1 run return run function ancient_artifacts:ancient_parchment/generate/rarity/random_relic with storage ancient_artifacts:parchment
