data modify storage ancient_artifacts:wave UUID1 set from entity @s UUID[0]
data modify storage ancient_artifacts:wave UUID2 set from entity @s UUID[1]
data modify storage ancient_artifacts:wave UUID3 set from entity @s UUID[2]
data modify storage ancient_artifacts:wave UUID4 set from entity @s UUID[3]
execute store result storage ancient_artifacts:wave animation int 1 run scoreboard players get @s animation
function ancient_artifacts:sculk_heart/waves/check with storage ancient_artifacts:wave
