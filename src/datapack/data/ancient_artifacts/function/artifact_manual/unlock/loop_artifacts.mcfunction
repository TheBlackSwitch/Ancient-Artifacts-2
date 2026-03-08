# Get data from artifact
data modify storage ancient_artifacts:manual currArtifact set from storage ancient_artifacts:manual newArtifacts[0]

# Check if it's already unlocked
function ancient_artifacts:artifact_manual/unlock/check_new with storage ancient_artifacts:manual currArtifact

# Switch to next artifact
data remove storage ancient_artifacts:manual newArtifacts[0]

# Run again for all artifacts
execute if data storage ancient_artifacts:manual newArtifacts[] run function ancient_artifacts:artifact_manual/unlock/loop_artifacts