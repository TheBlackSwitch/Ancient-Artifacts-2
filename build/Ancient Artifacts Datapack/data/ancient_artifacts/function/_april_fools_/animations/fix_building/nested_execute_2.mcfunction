playsound minecraft:block.wood.place master @a ~ ~ ~ 1
playsound minecraft:block.stone.place master @a ~ ~ ~ 1
execute at @e[tag=placement, limit=1] run place template ancient_artifacts:fix_building ~-5 ~ ~-5 none none 0.08
