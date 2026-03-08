advancement grant @s only ancient_artifacts:main/upgrade_artifact
execute if score @s upgrade_type matches 1 run advancement grant @s only ancient_artifacts:main/heavy_upgrade

##Check if artifact is max
execute if score @s upgrade_type matches 0 run scoreboard players add .level temp 1
execute if score @s upgrade_type matches 1 if score .rarity temp matches 4 run scoreboard players add .level temp 1
execute if score @s upgrade_type matches 1 unless score .rarity temp matches 4 run scoreboard players operation .level temp = .max temp

execute unless score .level temp = .max temp run return fail

execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
scoreboard players operation #search tbs.ID = @s tbs.ID

data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:player unlocked.upgraded",path:"unlocked.upgraded"}
function #theblackswitch:__version__/player_storage/get with storage ancient_artifacts:temp player_storage

$execute if data storage ancient_artifacts:artifact {dim:"overworld"} unless data storage ancient_artifacts:player {unlocked:{upgraded:{overworld:["$(id)"]}}} run data modify storage ancient_artifacts:player unlocked.upgraded.overworld append from storage ancient_artifacts:artifact id
$execute if data storage ancient_artifacts:artifact {dim:"nether"} unless data storage ancient_artifacts:player {unlocked:{upgraded:{nether:["$(id)"]}}} run data modify storage ancient_artifacts:player unlocked.upgraded.nether append from storage ancient_artifacts:artifact id
$execute if data storage ancient_artifacts:artifact {dim:"end"} unless data storage ancient_artifacts:player {unlocked:{upgraded:{end:["$(id)"]}}} run data modify storage ancient_artifacts:player unlocked.upgraded.end append from storage ancient_artifacts:artifact id
$execute if data storage ancient_artifacts:artifact {dim:"deep_dark"} unless data storage ancient_artifacts:player {unlocked:{upgraded:{deep_dark:["$(id)"]}}} run data modify storage ancient_artifacts:player unlocked.upgraded.deep_dark append from storage ancient_artifacts:artifact id

execute store result score @s upgraded.overworld if data storage ancient_artifacts:player unlocked.upgraded.overworld[]
execute store result score @s upgraded.nether if data storage ancient_artifacts:player unlocked.upgraded.nether[]
execute store result score @s upgraded.end if data storage ancient_artifacts:player unlocked.upgraded.end[]
execute store result score @s upgraded.deep_dark if data storage ancient_artifacts:player unlocked.upgraded.deep_dark[]

data modify storage ancient_artifacts:temp player_storage merge value {source:"storage ancient_artifacts:player unlocked.upgraded",path:"unlocked.upgraded"}
function #theblackswitch:__version__/player_storage/set_from with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage