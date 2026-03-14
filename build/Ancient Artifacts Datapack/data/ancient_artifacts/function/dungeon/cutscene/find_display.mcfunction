$execute as @e[type=item_display,tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),limit=1] at @s run function ancient_artifacts:dungeon/cutscene/animation with storage ancient_artifacts:cutscene
$tag @s add $(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)
