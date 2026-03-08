# Reset the stored previous artifact inventory

execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage ancient_artifacts:temp player_storage.path set value "data.prevArtifactsInv"
function #theblackswitch:__version__/player_storage/remove with storage ancient_artifacts:temp player_storage 

data remove storage ancient_artifacts:temp player_storage
