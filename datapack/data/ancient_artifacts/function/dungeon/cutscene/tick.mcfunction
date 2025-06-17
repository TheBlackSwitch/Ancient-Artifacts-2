execute if score .10 slow_tick matches 10 at @a unless entity @e[tag=spawn,distance=..1000] as @e[tag=dungeon_center,distance=..20] run function ancient_artifacts:dungeon/cutscene/check_enable
execute if score .2 slow_tick matches 2 as @e[type=marker,tag=dungeon_center,tag=cutscene,tag=!finished] run function ancient_artifacts:dungeon/cutscene/search_uuid
