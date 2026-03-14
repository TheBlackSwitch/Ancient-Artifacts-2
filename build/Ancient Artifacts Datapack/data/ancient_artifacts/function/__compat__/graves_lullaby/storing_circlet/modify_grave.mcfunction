execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players operation #search tbs.ID = @s tbs.ID
scoreboard players operation #inv_open temp = @s extra_inv_open
scoreboard players operation #grave_id temp = @s utils.player.id
execute positioned ~0.5 ~0.5 ~0.5 as @e[type=interaction, tag=graves.grave, predicate=ancient_artifacts:matches_grave_id, limit=1, sort=nearest, distance=..2] on passengers at @s run function ancient_artifacts:__compat__/graves_lullaby/storing_circlet/modify_grave/nested_execute_0
