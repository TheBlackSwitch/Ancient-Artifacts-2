execute if items entity @s weapon.offhand written_book[custom_data~{manual: 1b}] run function ancient_artifacts:artifact_manual/pages/get_data/nested_execute_0
execute if items entity @s weapon.mainhand written_book[custom_data~{manual: 1b}] run function ancient_artifacts:artifact_manual/pages/get_data/nested_execute_1
scoreboard players operation #search tbs.ID = @s tbs.ID
execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
execute if data storage ancient_artifacts:manual {data: {dim: "overworld"}} run return run function ancient_artifacts:artifact_manual/pages/overworld
execute if data storage ancient_artifacts:manual {data: {dim: "nether"}} run return run function ancient_artifacts:artifact_manual/pages/nether
execute if data storage ancient_artifacts:manual {data: {dim: "end"}} run return run function ancient_artifacts:artifact_manual/pages/end
execute if data storage ancient_artifacts:manual {data: {dim: "deep_dark"}} run return run function ancient_artifacts:artifact_manual/pages/deep_dark
execute if data storage ancient_artifacts:manual {data: {dim: "focus"}} run return run function ancient_artifacts:artifact_manual/pages/focus
