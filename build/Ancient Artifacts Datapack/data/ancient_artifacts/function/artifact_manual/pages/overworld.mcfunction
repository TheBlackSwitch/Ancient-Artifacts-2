data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual data.unlocked
data modify storage ancient_artifacts:manual unlocked.overworld set value []
data modify storage ancient_artifacts:temp player_storage.path set value "unlocked.artifact.overworld"
data modify storage ancient_artifacts:temp player_storage.result set value "ancient_artifacts:manual unlocked.overworld"
function #theblackswitch:v2.0/player_storage/get with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage
scoreboard players set .1 temp 0
execute store success score .1 temp run data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual unlocked.overworld
execute if score .1 temp matches 0 run return fail
execute if data storage ancient_artifacts:manual {data: {slot: "mainhand"}} run function ancient_artifacts:artifact_manual/pages/overworld/nested_execute_0
execute if data storage ancient_artifacts:manual {data: {slot: "offhand"}} run function ancient_artifacts:artifact_manual/pages/overworld/nested_execute_1
data modify storage ancient_artifacts:manual modify.slot set from storage ancient_artifacts:manual data.slot
data modify storage ancient_artifacts:manual modify.data.data.unlocked set from storage ancient_artifacts:manual unlocked.overworld
data modify storage ancient_artifacts:manual modify.data.data.checked set from storage ancient_artifacts:manual unlocked.overworld
data modify storage ancient_artifacts:manual modify.data.data.checked[].check set value "\u2714"
function ancient_artifacts:artifact_manual/pages/modify_custom_data with storage ancient_artifacts:manual modify
execute if data storage ancient_artifacts:manual {data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/contents/overworld
execute if data storage ancient_artifacts:manual {data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/contents/overworld
