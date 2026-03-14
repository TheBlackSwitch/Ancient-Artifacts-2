advancement grant @s only ancient_artifacts:artifacts/deep_dark/root
function ancient_artifacts:advancements/triggers/advance
tag @s add has_artifact
scoreboard players set .reached_deep_dark tbs.server_data 1
