
# Reset the event trigger
advancement revoke @s only ancient_artifacts:events/death
scoreboard players set @a aa.death 0

#-------------------------------------------------------
## Resets on death
#-------------------------------------------------------

execute if entity @s[tag=!recovery,tag=!focused] run function ancient_artifacts:artifacts/reset
execute if entity @s[tag=!recovery_3,tag=!focused]:
    scoreboard players set @s artifact_slot_1 0
    scoreboard players set @s artifact_slot_2 0
    scoreboard players set @s artifact_slot_3 0


#-------------------------------------------------------
## Reset artifact manual storage on death
#-------------------------------------------------------

function ancient_artifacts:artifact_manual/reset_prev_inv


#-------------------------------------------------------
## Reset final shout crown
#-------------------------------------------------------

tag @s remove shouting


#-------------------------------------------------------
## Graves compat when installed
#-------------------------------------------------------

execute if function ancient_artifacts:__compat__/graves_lullaby/is_enabled run function ancient_artifacts:__compat__/graves_lullaby/recovery_anklet/death
execute if function ancient_artifacts:__compat__/graves_lullaby/is_enabled run function ancient_artifacts:__compat__/graves_lullaby/storing_circlet/death


#-------------------------------------------------------
## Artifact death functions
#-------------------------------------------------------

function ancient_artifacts:artifacts/deep_dark/recovery_anklet/death
function ancient_artifacts:artifacts/end/storing_circlet/death