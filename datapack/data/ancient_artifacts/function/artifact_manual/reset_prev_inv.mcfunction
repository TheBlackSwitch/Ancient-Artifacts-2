execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data merge storage ancient_artifacts:temp {player_storage:{path:"data.prevArtifactsInv"}}
function theblackswitch:player_storage/remove with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage