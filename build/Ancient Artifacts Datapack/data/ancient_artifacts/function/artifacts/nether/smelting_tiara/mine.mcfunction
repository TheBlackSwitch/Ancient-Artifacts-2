scoreboard players operation #search tbs.ID = @s tbs.ID
execute if entity @s[tag=smelt] if predicate ancient_artifacts:sneaking if predicate ancient_artifacts:holding_tool anchored eyes run function ancient_artifacts:artifacts/nether/smelting_tiara/raycast
