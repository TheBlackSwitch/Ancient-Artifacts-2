$data modify storage ancient_artifacts:parchment current_relic set from storage ancient_artifacts:relics $(selected_dim).list[$(rand)].relic
execute store success score .3 temp run function ancient_artifacts:ancient_parchment/generate/check_relic with storage ancient_artifacts:parchment


#no duplicate
execute if score .3 temp matches 0 store result score .4 temp run data get storage ancient_artifacts:parchment current
execute if score .3 temp matches 0 store result score .5 temp run data get storage ancient_artifacts:parchment correct
$execute if score .3 temp matches 0 run data modify storage ancient_artifacts:parchment relics append from storage ancient_artifacts:relics $(selected_dim).list[$(rand)].relic
$execute if score .3 temp matches 0 if score .4 temp = .5 temp run data modify storage ancient_artifacts:parchment artifact set from storage ancient_artifacts:relics $(selected_dim).list[$(rand)].artifact
execute if score .3 temp matches 0 store result storage ancient_artifacts:parchment current int 1 run scoreboard players remove .4 temp 1
execute if score .3 temp matches 0 if score .4 temp matches 1.. run function ancient_artifacts:ancient_parchment/generate/rand with storage ancient_artifacts:parchment

#duplicate
execute if score .3 temp matches 1 run function ancient_artifacts:ancient_parchment/generate/rand with storage ancient_artifacts:parchment