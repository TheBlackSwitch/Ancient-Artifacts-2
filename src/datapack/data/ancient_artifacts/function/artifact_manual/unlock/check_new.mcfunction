# Check if this artifact is already unlocked

$execute unless data storage ancient_artifacts:manual {player_data:{unlocked:{artifact:{"$(dim)":[{id:"$(id)"}]}}}} run \
    function ancient_artifacts:artifact_manual/unlock/unlock with storage ancient_artifacts:manual currArtifact
