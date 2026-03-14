advancement grant @s only ancient_artifacts:main/edit_configs
execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage ancient_artifacts:temp player_storage.path set value "unlocked.artifact"
data modify storage ancient_artifacts:temp player_storage.result set value "ancient_artifacts:config unlocked_artifacts"
function #theblackswitch:v2.0/player_storage/get with storage ancient_artifacts:temp player_storage
execute if score @s always_show_hotbar matches 1 run data modify storage ancient_artifacts:config always_show_hotbar set value {text: "True", color: "green"}
execute if score @s always_show_hotbar matches 0 run data modify storage ancient_artifacts:config always_show_hotbar set value {text: "False", color: "red"}
execute if score @s hide_artifact_hud matches 1 run data modify storage ancient_artifacts:config hide_artifact_hud set value {text: "True", color: "green"}
execute if score @s hide_artifact_hud matches 0 run data modify storage ancient_artifacts:config hide_artifact_hud set value {text: "False", color: "red"}
execute if score @s storing_circlet_particles matches 1 run data modify storage ancient_artifacts:config show_storing_circlet_particles set value {text: "True", color: "green"}
execute if score @s storing_circlet_particles matches 0 run data modify storage ancient_artifacts:config show_storing_circlet_particles set value {text: "False", color: "red"}
function ancient_artifacts:config/build/nested_execute_0
function ancient_artifacts:config/show with storage ancient_artifacts:config
