scoreboard players operation #search tbs.ID = @s tbs.ID
execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage ancient_artifacts:temp player_storage merge value {result: "ancient_artifacts:manual prevArtifacts", path: "prevArtifacts"}
function #theblackswitch:v2.0/player_storage/get with storage ancient_artifacts:temp player_storage
data modify storage ancient_artifacts:manual currArtifacts set value []
data modify storage ancient_artifacts:manual currArtifacts append from entity @s Inventory[{components: {"minecraft:custom_data": {artifact: true}}}].components."minecraft:custom_data".data
data remove storage ancient_artifacts:manual currArtifacts[].max
data remove storage ancient_artifacts:manual currArtifacts[].start
data remove storage ancient_artifacts:manual currArtifacts[].relic
data remove storage ancient_artifacts:manual currArtifacts[].level
data modify storage ancient_artifacts:manual test set from storage ancient_artifacts:manual prevArtifacts
execute store success score .different temp run data modify storage ancient_artifacts:manual test set from storage ancient_artifacts:manual currArtifacts
execute if score .different temp matches 0 run return fail
data modify storage ancient_artifacts:manual newArtifacts set from storage ancient_artifacts:manual currArtifacts
function ancient_artifacts:artifact_manual/unlock/find_new
execute store result score #count temp if data storage ancient_artifacts:manual newArtifacts[]
execute unless score #count temp matches 1.. run return fail
data modify storage ancient_artifacts:temp player_storage merge value {source: "storage ancient_artifacts:manual currArtifacts", path: "prevArtifacts"}
function #theblackswitch:v2.0/player_storage/set_from with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:manual player_data.unlocked
data modify storage ancient_artifacts:temp player_storage merge value {result: "ancient_artifacts:manual player_data.unlocked", path: "unlocked"}
function #theblackswitch:v2.0/player_storage/get with storage ancient_artifacts:temp player_storage
function ancient_artifacts:artifact_manual/unlock/loop_artifacts
data modify storage ancient_artifacts:temp player_storage merge value {source: "storage ancient_artifacts:manual player_data.unlocked", path: "unlocked"}
function #theblackswitch:v2.0/player_storage/set_from with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage
