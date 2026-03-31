execute in overworld run tp @a @e[tag=spawn_point, limit=1]
effect clear @s
kill @e[tag=ai_portal]
advancement grant @a only ancient_artifacts:ai/defeat_ai
