summon chest_minecart 0 0 0 {Tags:["relic_container"],Invulnerable:1b}

##Insert loot for every dimention
loot replace entity @e[tag=relic_container,limit=1] container.0 loot ancient_artifacts:cauldron/relic/overworld
loot replace entity @e[tag=relic_container,limit=1] container.1 loot ancient_artifacts:cauldron/relic/nether
loot replace entity @e[tag=relic_container,limit=1] container.2 loot ancient_artifacts:cauldron/relic/end
loot replace entity @e[tag=relic_container,limit=1] container.3 loot ancient_artifacts:cauldron/relic/deep_dark

##Store current (random) relic
data modify storage ancient_artifacts:relics overworld.current set from entity @e[tag=relic_container,limit=1] Items[{Slot:0b}].id
data modify storage ancient_artifacts:relics nether.current set from entity @e[tag=relic_container,limit=1] Items[{Slot:1b}].id
data modify storage ancient_artifacts:relics end.current set from entity @e[tag=relic_container,limit=1] Items[{Slot:2b}].id
data modify storage ancient_artifacts:relics deep_dark.current set from entity @e[tag=relic_container,limit=1] Items[{Slot:3b}].id

##Reset current artifact
data modify storage ancient_artifacts:relics overworld.artifact set value 0b
data modify storage ancient_artifacts:relics nether.artifact set value 0b
data modify storage ancient_artifacts:relics end.artifact set value 0b
data modify storage ancient_artifacts:relics deep_dark.artifact set value 0b

##Set current artifact according to the current relic
function ancient_artifacts:relic/artifact_list/overworld
function ancient_artifacts:relic/artifact_list/nether
function ancient_artifacts:relic/artifact_list/deep_dark
function ancient_artifacts:relic/artifact_list/end

##Veryfy relics (check duplicates)
execute run function ancient_artifacts:relic/veryfy with storage ancient_artifacts:relics overworld
execute run function ancient_artifacts:relic/veryfy with storage ancient_artifacts:relics nether
execute run function ancient_artifacts:relic/veryfy with storage ancient_artifacts:relics end
execute run function ancient_artifacts:relic/veryfy with storage ancient_artifacts:relics deep_dark

execute as @e[tag=relic_container] run data remove entity @s Items
kill @e[tag=relic_container]

execute if score .relics_overworld server matches ..14 run function ancient_artifacts:relic/generate
execute if score .relics_overworld server matches ..14 run return 1

execute if score .relics_nether server matches ..14 run function ancient_artifacts:relic/generate
execute if score .relics_nether server matches ..14 run return 1

execute if score .relics_end server matches ..14 run function ancient_artifacts:relic/generate
execute if score .relics_end server matches ..14 run return 1

execute if score .relics_deep_dark server matches ..14 run function ancient_artifacts:relic/generate
execute if score .relics_deep_dark server matches ..14 run return 1

data modify storage ancient_artifacts:relics generated set value 1b