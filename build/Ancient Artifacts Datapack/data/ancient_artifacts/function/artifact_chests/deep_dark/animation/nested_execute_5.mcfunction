particle shriek{delay: 0} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 5} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 10} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 15} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 20} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 25} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 30} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 35} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 40} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 45} ~ ~0.3 ~ 0 0 0 1 1 force
particle shriek{delay: 50} ~ ~0.3 ~ 0 0 0 1 1 force
playsound minecraft:block.sculk_shrieker.shriek block @a ~ ~ ~ 1 1
execute on target run function ancient_artifacts:artifact_chests/drop_loot_deep_dark {loot_table: "ancient_artifacts:dungeon_loot/deep_dark"}
