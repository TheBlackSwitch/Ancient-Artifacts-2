scoreboard players set #success temp 0
function ancient_artifacts:utilities/run_command {command: "function graves:utils/load"}
return run scoreboard players get #success temp
