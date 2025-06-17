execute unless entity @s[tag=cutscene] run data modify storage ancient_artifacts:cutscene UUID1 set from entity @s UUID[0]
execute unless entity @s[tag=cutscene] run data modify storage ancient_artifacts:cutscene UUID2 set from entity @s UUID[1]
execute unless entity @s[tag=cutscene] run data modify storage ancient_artifacts:cutscene UUID3 set from entity @s UUID[2]
execute unless entity @s[tag=cutscene] run data modify storage ancient_artifacts:cutscene UUID4 set from entity @s UUID[3]
execute unless entity @s[tag=cutscene] at @s run function ancient_artifacts:dungeon/cutscene/init with storage ancient_artifacts:cutscene