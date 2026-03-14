execute as @e[tag=ancient_stone_place] at @s run function ancient_artifacts:ancient_stone/place
execute if score #3 tbs.slow_tick matches 3 as @e[tag=ancient_stone,tag=interact,nbt={attack:{}}] at @s positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:ancient_stone/attack
execute if score #3 tbs.slow_tick matches 3 as @e[tag=ancient_stone,tag=interact] at @s positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:ancient_stone/break_progress
execute if score #3 tbs.slow_tick matches 3 as @e[tag=ancient_stone,tag=item,tag=!generated] at @s run function ancient_artifacts:ancient_stone/generate
execute as @e[tag=ancient_stone,tag=interact,tag=!opened] at @s positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:ancient_stone/animation
execute as @e[tag=ancient_stone,tag=interact,nbt={interaction:{}}] at @s positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:ancient_stone/use
