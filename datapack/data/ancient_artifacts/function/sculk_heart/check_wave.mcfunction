##Check if the wave is cleared
$bossbar set sculk_heart_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) players @a[distance=..40]
$bossbar set sculk_heart_space_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) players @a[distance=..40]
$execute unless entity @e[tag=sculk_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),distance=..40] run function ancient_artifacts:sculk_heart/summon with storage ancient_artifacts:wave