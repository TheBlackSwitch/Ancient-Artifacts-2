##Max
effect clear @s levitation
function ancient_artifacts:tag_tamed
effect clear @a[tag=tamed,distance=.15] levitation
tag @s add shout_land
tag @s remove shouting
scoreboard players set @s final_shout_max 0