$bossbar set skeleton_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) players @a[distance=..20]
$execute unless entity @e[tag=tomb_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),distance=..20] run function ancient_artifacts:dungeon/scares/skeleton_tomb/summon with storage ancient_artifacts:tomb
