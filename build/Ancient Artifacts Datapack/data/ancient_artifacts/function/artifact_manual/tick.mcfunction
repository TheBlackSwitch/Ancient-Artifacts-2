advancement revoke @a only ancient_artifacts:trigger/pickup_artifact
execute if score #10 tbs.slow_tick matches 3 as @a run function ancient_artifacts:artifact_manual/tick/nested_execute_0
execute as @a if items entity @s weapon.mainhand written_book[custom_data~{manual: 1b}] at @s run function ancient_artifacts:artifact_manual/pages/get_data
execute as @a if items entity @s weapon.offhand written_book[custom_data~{manual: 1b}] at @s run function ancient_artifacts:artifact_manual/pages/get_data
