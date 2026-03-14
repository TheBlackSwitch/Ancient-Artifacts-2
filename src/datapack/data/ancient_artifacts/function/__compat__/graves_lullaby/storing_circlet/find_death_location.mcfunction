# Find the location of the last death and thus the grave we need to modify


execute as @a[tag=aa.should_modify_grave]:
    scoreboard players set #found_grave temp 0

    data modify storage ancient_artifacts:player death.pos_x set from entity @s LastDeathLocation.pos[0]
    data modify storage ancient_artifacts:player death.pos_y set from entity @s LastDeathLocation.pos[1]
    data modify storage ancient_artifacts:player death.pos_z set from entity @s LastDeathLocation.pos[2]
    data modify storage ancient_artifacts:player death.dim set from entity @s LastDeathLocation.dimension

    with storage ancient_artifacts:player death:
        $execute in $(dim) positioned $(pos_x).0 $(pos_y).0 $(pos_z).0 run function ancient_artifacts:__compat__/graves_lullaby/storing_circlet/modify_grave

    execute if score #found_grave temp matches 1 run tag @s remove aa.should_modify_grave