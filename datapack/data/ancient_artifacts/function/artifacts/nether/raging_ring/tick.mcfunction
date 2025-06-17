execute if score .3 slow_tick matches 3 as @e[scores={rage=1..}] at @s run function ancient_artifacts:artifacts/nether/raging_ring/rage
execute if score .3 slow_tick matches 3 run kill @e[tag=rage_controller,predicate=!ancient_artifacts:riding]
execute if score .20 slow_tick matches 20 as @a run function ancient_artifacts:artifacts/nether/raging_ring/check_expert
