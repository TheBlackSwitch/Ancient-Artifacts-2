advancement revoke @s only ancient_artifacts:trigger/expansion_star_consumed
playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1 0
particle minecraft:raid_omen ~ ~ ~ 0 0.8 0 0.1 30 force
particle trial_spawner_detection ~ ~ ~ 0.3 0.8 0.3 0 20 force
advancement grant @s only ancient_artifacts:main/consume_expansion_star
