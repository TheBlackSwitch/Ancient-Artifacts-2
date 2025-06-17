data modify storage ancient_artifacts:smith block.X set from entity @s Brain.memories."minecraft:job_site".value.pos[0]
data modify storage ancient_artifacts:smith block.Y set from entity @s Brain.memories."minecraft:job_site".value.pos[1]
data modify storage ancient_artifacts:smith block.Z set from entity @s Brain.memories."minecraft:job_site".value.pos[2]
data modify storage ancient_artifacts:smith block.DIM set from entity @s Brain.memories."minecraft:job_site".value.dimension
execute store success score .1 temp run function ancient_artifacts:artifact_smith/check_cauldron with storage ancient_artifacts:smith block
##Smith
execute if score .1 temp matches 1 run tag @s add INIT
execute if score .1 temp matches 1 run tag @s add artifact_smith
tag @s add checked
tag @s remove reset
