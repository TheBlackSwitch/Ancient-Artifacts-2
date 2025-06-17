##1 relic (normal)
execute if score .relic_count temp matches 1 run return run function ancient_artifacts:ancient_parchment/show/chars/none with storage ancient_artifacts:parchment show

##Rarity / Unequal
execute if score .relic_count temp matches 2 unless data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:equal}}}}} run \
     return run function ancient_artifacts:ancient_parchment/show/chars/and_2 with storage ancient_artifacts:parchment show

execute if score .relic_count temp matches 3 unless data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:equal}}}}} run \
     return run function ancient_artifacts:ancient_parchment/show/chars/and_3 with storage ancient_artifacts:parchment show

##Equal
execute if score .relic_count temp matches 2 if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:equal}}}}} run \
     return run function ancient_artifacts:ancient_parchment/show/chars/or_2 with storage ancient_artifacts:parchment show

execute if score .relic_count temp matches 3 if data storage ancient_artifacts:parchment {SelectedItem:{components:{"minecraft:custom_data":{recipe:{compare:equal}}}}} run \
     return run function ancient_artifacts:ancient_parchment/show/chars/or_3 with storage ancient_artifacts:parchment show

