advancement grant @s only ancient_artifacts:artifacts/end/root
function ancient_artifacts:advancements/triggers/advance
tag @s add has_artifact
scoreboard players set .reached_end tbs.server_data 1
