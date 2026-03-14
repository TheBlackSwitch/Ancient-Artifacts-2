if entity @s[tag=cutscene] run return fail

data modify storage ancient_artifacts:cutscene UUID1 set from entity @s UUID[0]
data modify storage ancient_artifacts:cutscene UUID2 set from entity @s UUID[1]
data modify storage ancient_artifacts:cutscene UUID3 set from entity @s UUID[2]
data modify storage ancient_artifacts:cutscene UUID4 set from entity @s UUID[3]
function ancient_artifacts:dungeon/cutscene/init with storage ancient_artifacts:cutscene