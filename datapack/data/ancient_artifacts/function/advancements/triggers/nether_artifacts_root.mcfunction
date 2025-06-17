advancement grant @s only ancient_artifacts:artifacts/nether/root
function ancient_artifacts:advancements/triggers/advance
tag @s add has_artifact
scoreboard players set .reached_nether tbs.server_data 1