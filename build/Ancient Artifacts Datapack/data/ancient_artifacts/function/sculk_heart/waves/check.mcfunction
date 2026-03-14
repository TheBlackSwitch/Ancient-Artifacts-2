$execute unless entity @e[tag=sculk_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),distance=..40] run function ancient_artifacts:sculk_heart/waves/new
execute if score @s animation matches -1 run function ancient_artifacts:sculk_heart/waves/check/nested_execute_0
