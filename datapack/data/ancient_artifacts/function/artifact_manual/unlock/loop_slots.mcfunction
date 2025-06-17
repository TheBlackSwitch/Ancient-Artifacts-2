#say loop
##Get data from artifact
data modify storage ancient_artifacts:manual current_item.slot set from storage ancient_artifacts:manual currInv[0].Slot
data modify storage ancient_artifacts:manual current_item.dim set from storage ancient_artifacts:manual currInv[0].components."minecraft:custom_data".data.dim
data modify storage ancient_artifacts:manual current_item.id set from storage ancient_artifacts:manual currInv[0].components."minecraft:custom_data".data.id
data modify storage ancient_artifacts:manual current_item.name set from storage ancient_artifacts:manual currInv[0].components."minecraft:custom_name"
##Check if it's already unlocked
function ancient_artifacts:artifact_manual/unlock/check_new with storage ancient_artifacts:manual current_item

##Switch to next artifact
data remove storage ancient_artifacts:manual currInv[0]

##Run again for all artifacts
execute if data storage ancient_artifacts:manual currInv[] run function ancient_artifacts:artifact_manual/unlock/loop_slots