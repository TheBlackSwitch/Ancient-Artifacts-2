advancement revoke @s only ancient_artifacts:events/death
scoreboard players set @a aa.death 0
execute if entity @s[tag=!recovery, tag=!focused] run function ancient_artifacts:artifacts/reset
execute if entity @s[tag=!recovery_3, tag=!focused] run function ancient_artifacts:events/death/nested_execute_0
function ancient_artifacts:artifact_manual/reset_prev_inv
tag @s remove shouting
execute if function ancient_artifacts:__compat__/graves_lullaby/is_enabled run function ancient_artifacts:__compat__/graves_lullaby/recovery_anklet/death
execute if function ancient_artifacts:__compat__/graves_lullaby/is_enabled run function ancient_artifacts:__compat__/graves_lullaby/storing_circlet/death
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/death
function ancient_artifacts:artifacts/end/storing_circlet/death
