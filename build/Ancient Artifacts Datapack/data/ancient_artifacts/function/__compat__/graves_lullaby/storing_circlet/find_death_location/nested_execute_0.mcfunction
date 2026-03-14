scoreboard players set #found_grave temp 0
data modify storage ancient_artifacts:player death.pos_x set from entity @s LastDeathLocation.pos[0]
data modify storage ancient_artifacts:player death.pos_y set from entity @s LastDeathLocation.pos[1]
data modify storage ancient_artifacts:player death.pos_z set from entity @s LastDeathLocation.pos[2]
data modify storage ancient_artifacts:player death.dim set from entity @s LastDeathLocation.dimension
function ancient_artifacts:__compat__/graves_lullaby/storing_circlet/find_death_location/nested_macro_0 with storage ancient_artifacts:player death
execute if score #found_grave temp matches 1 run tag @s remove aa.should_modify_grave
