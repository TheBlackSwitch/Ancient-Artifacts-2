function ancient_artifacts:dungeon/scares/tick
function ancient_artifacts:dungeon/effects/tick
execute as @e[tag=dungeon_entrance] at @s run function ancient_artifacts:dungeon/entrance/tick
execute if score .20 slow_tick matches 20 unless entity @e[type=marker,tag=spawn,distance=..1000] run function ancient_artifacts:dungeon/trigger
execute if score .5 slow_tick matches 5 as @e[tag=prior_explorer,tag=interaction] run function ancient_artifacts:dungeon/prior_explorer/tick
function ancient_artifacts:dungeon/cutscene/tick
function ancient_artifacts:dungeon/catalog_audio_book/tick