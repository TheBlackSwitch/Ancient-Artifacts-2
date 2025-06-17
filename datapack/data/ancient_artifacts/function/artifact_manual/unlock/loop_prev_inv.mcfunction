data modify storage ancient_artifacts:temp curr.item set from storage ancient_artifacts:manual prevInv[0]

function ancient_artifacts:artifact_manual/unlock/remove_duplicate with storage ancient_artifacts:temp curr
data remove storage ancient_artifacts:manual prevInv[0]

execute if data storage ancient_artifacts:manual prevInv[] run function ancient_artifacts:artifact_manual/unlock/loop_prev_inv