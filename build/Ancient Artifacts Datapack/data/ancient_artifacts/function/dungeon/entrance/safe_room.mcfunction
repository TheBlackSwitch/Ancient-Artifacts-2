tag @s add safe_room_generated
fill ~-8 ~ ~-4 ~4 ~7 ~3 air replace water
place template dungeon:center/safe_room ~-8 ~ ~-4
execute positioned ~ ~-8 ~ run function ancient_artifacts:dungeon/entrance/gen_stairs
