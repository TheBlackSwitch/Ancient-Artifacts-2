# get the player ID
scoreboard players operation #search tbs.ID = @s tbs.ID
execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID

# Collect the previous artifacts (from previous check)
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual prevArtifacts",path:"prevArtifacts"}
function #theblackswitch:__version__/player_storage/get with storage ancient_artifacts:temp player_storage

# Collect current artifacts (and yes, "smart" future me, this has to be done this way to store the artifact's ID in component form and remove everything else)
data modify storage ancient_artifacts:manual currArtifacts set value []

data modify storage ancient_artifacts:manual currArtifacts append from entity @s Inventory[{"components":{"minecraft:custom_data":{"artifact":true}}}].components."minecraft:custom_data".data
data remove storage ancient_artifacts:manual currArtifacts[].max
data remove storage ancient_artifacts:manual currArtifacts[].start
data remove storage ancient_artifacts:manual currArtifacts[].relic
data remove storage ancient_artifacts:manual currArtifacts[].level

# Check if different
data modify storage ancient_artifacts:manual test set from storage ancient_artifacts:manual prevArtifacts
execute store success score .different temp run data modify storage ancient_artifacts:manual test set from storage ancient_artifacts:manual currArtifacts

# Stop if no changes were detected
execute if score .different temp matches 0 run return fail

# Collect all the changed artifacts
data modify storage ancient_artifacts:manual newArtifacts set from storage ancient_artifacts:manual currArtifacts
function ancient_artifacts:artifact_manual/unlock/find_new

# Stop if no new artifacts were detected
execute store result score #count temp if data storage ancient_artifacts:manual newArtifacts[]
execute unless score #count temp matches 1.. run return fail

# Store the current artifacts (for next check)
data modify storage ancient_artifacts:temp player_storage merge value {source:"storage ancient_artifacts:manual currArtifacts",path:"prevArtifacts"}
function #theblackswitch:__version__/player_storage/set_from with storage ancient_artifacts:temp player_storage

# Get the already unlocked artifacts to check against later
data remove storage ancient_artifacts:manual player_data.unlocked
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual player_data.unlocked",path:"unlocked"}
function #theblackswitch:__version__/player_storage/get with storage ancient_artifacts:temp player_storage

# Loop through all new artifacts and unlock them if needed
function ancient_artifacts:artifact_manual/unlock/loop_artifacts

# Mark the new artifacts as unlocked
data modify storage ancient_artifacts:temp player_storage merge value {source:"storage ancient_artifacts:manual player_data.unlocked",path:"unlocked"}
function #theblackswitch:__version__/player_storage/set_from with storage ancient_artifacts:temp player_storage

data remove storage ancient_artifacts:temp player_storage