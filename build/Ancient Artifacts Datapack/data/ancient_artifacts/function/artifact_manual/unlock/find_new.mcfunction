data modify storage ancient_artifacts:temp curr.item set from storage ancient_artifacts:manual prevArtifacts[0]
function ancient_artifacts:artifact_manual/unlock/remove_old with storage ancient_artifacts:temp curr
data remove storage ancient_artifacts:manual prevArtifacts[0]
execute if data storage ancient_artifacts:manual prevArtifacts[] run function ancient_artifacts:artifact_manual/unlock/find_new
