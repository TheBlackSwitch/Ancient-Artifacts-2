scoreboard players set #success temp 0
function ancient_artifacts:utilities/run_command {command: "loot spawn 0 -99999 0 loot graves:entities/player"}
return run scoreboard players get #success temp
