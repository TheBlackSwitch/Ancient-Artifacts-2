scoreboard players set #success temp 0
execute store result score #success temp run function ancient_artifacts:utilities/verify_function {"function":"graves:utils/player/clear_chat"}

return run scoreboard players get #success temp