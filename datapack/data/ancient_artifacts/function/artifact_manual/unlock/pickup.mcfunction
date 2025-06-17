##Collect the previous artifacts (from previous check)
scoreboard players operation .search tbs.ID = @s tbs.ID
execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual prevInv",path:"prevArtifactsInv"}
function theblackswitch:player_storage/get with storage ancient_artifacts:temp player_storage

##Collect current artifacts
data modify storage ancient_artifacts:manual currInv set value []
data modify storage ancient_artifacts:manual currInv append from entity @s Inventory[{"components":{"minecraft:custom_data":{"artifact":true}}}]

##Check if different
data modify storage ancient_artifacts:manual Inv set from storage ancient_artifacts:manual prevInv
execute store success score .different temp run data modify storage ancient_artifacts:manual Inv set from storage ancient_artifacts:manual currInv

##If not changed, return
execute if score .different temp matches 0 run return 1

function ancient_artifacts:artifact_manual/unlock/loop_prev_inv

##If changed, store changes and loop through every slot with an artifact
data modify storage ancient_artifacts:temp player_storage merge value {source:"storage ancient_artifacts:manual currInv",path:"prevArtifactsInv"}
function theblackswitch:player_storage/set_from with storage ancient_artifacts:temp player_storage

##Also store the unlocked artifacts of the player in a storage to use later
data remove storage ancient_artifacts:manual player_data.unlocked
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual player_data.unlocked",path:"unlocked"}
function theblackswitch:player_storage/get with storage ancient_artifacts:temp player_storage

function ancient_artifacts:artifact_manual/unlock/loop_slots

data modify storage ancient_artifacts:temp player_storage merge value {source:"storage ancient_artifacts:manual player_data.unlocked",path:"unlocked"}
function theblackswitch:player_storage/set_from with storage ancient_artifacts:temp player_storage

data remove storage ancient_artifacts:temp player_storage