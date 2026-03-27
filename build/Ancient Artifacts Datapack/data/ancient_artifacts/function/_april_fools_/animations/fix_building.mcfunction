execute unless score #AI_ANIM_TYPE tbs.server_data matches 1.. run function ancient_artifacts:_april_fools_/animations/fix_building/nested_execute_0
execute if score #AI_ANIMATION tbs.server_data matches 10 run function ancient_artifacts:_april_fools_/animations/fix_building/nested_execute_1
execute if score #AI_ANIMATION tbs.server_data matches 46..155 if score #5 tbs.slow_tick matches 3 as @a[tag=VICTIM] at @s run function ancient_artifacts:_april_fools_/animations/fix_building/nested_execute_2
execute if score #AI_ANIMATION tbs.server_data matches 156 as @a[tag=VICTIM] at @s at @e[tag=placement, limit=1] run place template ancient_artifacts:fix_building ~-5 ~ ~-5 none none
execute if score #AI_ANIMATION tbs.server_data matches 180.. run function ancient_artifacts:_april_fools_/animations/fix_building/nested_execute_3
scoreboard players add #AI_ANIMATION tbs.server_data 1
