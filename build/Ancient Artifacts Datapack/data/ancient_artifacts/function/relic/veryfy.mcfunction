$execute store success score .1 temp if data storage ancient_artifacts:relics {$(type):{list:[{relic:"$(current)"}]}}
$execute if score .1 temp matches 0 unless data storage ancient_artifacts:relics {$(type):{artifact:0b}} unless score .relics_$(type) server matches 15.. run data modify storage ancient_artifacts:relics $(type).list append value {relic:"$(current)",artifact:$(artifact)}
$execute if score .1 temp matches 0 unless data storage ancient_artifacts:relics {$(type):{artifact:0b}} unless score .relics_$(type) server matches 15.. run data modify storage ancient_artifacts:relics all.list append value {relic:"$(current)",artifact:$(artifact)}
$execute if score .1 temp matches 0 unless score .relics_$(type) server matches 15.. run scoreboard players add .relics_$(type) server 1
