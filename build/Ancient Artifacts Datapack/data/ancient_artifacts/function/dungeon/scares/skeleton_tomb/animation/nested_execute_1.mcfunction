data modify storage ancient_artifacts:tomb UUID1 set from entity @s UUID[0]
data modify storage ancient_artifacts:tomb UUID2 set from entity @s UUID[1]
data modify storage ancient_artifacts:tomb UUID3 set from entity @s UUID[2]
data modify storage ancient_artifacts:tomb UUID4 set from entity @s UUID[3]
execute store result storage ancient_artifacts:tomb animation int 1 run scoreboard players get @s animation
scoreboard players set #11 temp 11
execute store result storage ancient_artifacts:tomb wave int 1 run scoreboard players operation #11 temp -= @s animation
function ancient_artifacts:dungeon/scares/skeleton_tomb/check_wave with storage ancient_artifacts:tomb
