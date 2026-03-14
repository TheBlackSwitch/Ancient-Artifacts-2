scoreboard players operation #search golemID = @s golemID
execute if score @s animation matches 1.. at @e[type=marker, tag=artifact_golem, distance=..20, predicate=ancient_artifacts:match_golem_id, tag=spawn_pos, limit=1, sort=nearest] run particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.1 0.5 0 20 force
execute if score @s animation matches 30.. at @e[type=marker, tag=artifact_golem, distance=..20, predicate=ancient_artifacts:match_golem_id, tag=spawn_pos, limit=1, sort=nearest] run particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.1 0.5 0 20 force
execute if score @s animation matches 10..19 run tp @s ~ ~0.05 ~
execute if score @s animation matches 20..24 run tp @s ~ ~0.01 ~
execute if score @s animation matches 25..39 run tp @s ~ ~0.08 ~
execute if score @s animation matches 40..44 run tp @s ~ ~0.14 ~
execute if score @s animation matches 45..55 run tp @s ~ ~0.05 ~
execute if score @s animation matches 1 run playsound minecraft:entity.warden.emerge hostile @a ~ ~2 ~ 1 2
execute if score @s animation matches 10 run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~2 ~ 1 0
execute if score @s animation matches 25 run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~2 ~ 1 0
execute if score @s animation matches 30 run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~2 ~ 1 0
execute if score @s animation matches 50 run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~2 ~ 1 0
execute if score @s animation matches 20 run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_0
execute if score @s animation matches 34 run playsound block.netherite_block.place hostile @a ~ ~2 ~ 2 0.6
execute if score @s animation matches 34 run playsound entity.iron_golem.step hostile @a ~ ~2 ~ 2 0.8
execute if score @s animation matches 43 run playsound block.netherite_block.place hostile @a ~ ~2 ~ 2 0.6
execute if score @s animation matches 43 run playsound entity.iron_golem.step hostile @a ~ ~2 ~ 2 0.8
execute if score @s animation matches 1 run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_1
execute if score @s animation matches 10 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.2194981993865548d, -0.31347591593739144d, 0.7567978077333786d, 0.5299155298754943d]}
execute if score @s animation matches 10 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.2194981993865548d, 0.31347591593739144d, -0.7567978077333786d, 0.5299155298754943d]}
execute if score @s animation matches 22 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_2
execute if score @s animation matches 24 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_3
execute if score @s animation matches 26 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_4
execute if score @s animation matches 28 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_5
execute if score @s animation matches 30 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_6
execute if score @s animation matches 32 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_7
execute if score @s animation matches 34 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_8
execute if score @s animation matches 36 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_9
execute if score @s animation matches 38 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_10
execute if score @s animation matches 40 on passengers run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_11
execute if score @s animation matches 55.. run function ancient_artifacts:artifact_golem/summon_animation/nested_execute_12
scoreboard players add @s animation 1
