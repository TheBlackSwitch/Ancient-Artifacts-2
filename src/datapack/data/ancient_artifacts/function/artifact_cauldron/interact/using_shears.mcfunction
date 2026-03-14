advancement revoke @s only ancient_artifacts:trigger/use_shears
execute unless score @s using_shears matches 1.. anchored eyes run function ancient_artifacts:artifact_cauldron/interact/raycast
scoreboard players set @s using_shears 2