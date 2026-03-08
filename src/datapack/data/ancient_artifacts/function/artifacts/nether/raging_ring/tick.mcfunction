execute if score #3 tbs.slow_tick matches 3 as @e[scores={rage=1..},type=#ancient_artifacts:rage] at @s run function ancient_artifacts:artifacts/nether/raging_ring/rage
execute if score #3 tbs.slow_tick matches 3 run kill @e[tag=rage_controller,predicate=!ancient_artifacts:riding]
execute if score #20 tbs.slow_tick matches 4 as @a run function ancient_artifacts:artifacts/nether/raging_ring/check_expert
