data modify storage ancient_artifacts:manual currArtifact set from storage ancient_artifacts:manual newArtifacts[0]
function ancient_artifacts:artifact_manual/unlock/check_new with storage ancient_artifacts:manual currArtifact
data remove storage ancient_artifacts:manual newArtifacts[0]
execute if data storage ancient_artifacts:manual newArtifacts[] run function ancient_artifacts:artifact_manual/unlock/loop_artifacts
