data modify storage ancient_artifacts:particle x set from entity @s Pos[0]
data modify storage ancient_artifacts:particle y set from entity @s Pos[1]
data modify storage ancient_artifacts:particle z set from entity @s Pos[2]
data modify storage ancient_artifacts:particle delay set value 10
data modify storage ancient_artifacts:particle from set value "~ ~ ~"
function ancient_artifacts:utilities/vibration/block with storage ancient_artifacts:particle
