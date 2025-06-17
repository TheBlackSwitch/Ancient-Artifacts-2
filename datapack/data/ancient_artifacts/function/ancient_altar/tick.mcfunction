execute if score .3 slow_tick matches 3 as @e[tag=ancient_altar_place] run function ancient_artifacts:ancient_altar/place
execute if score .3 slow_tick matches 3 as @e[tag=ancient_altar,tag=interact,nbt={attack:{}}] at @s positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:ancient_altar/attack
execute if score .3 slow_tick matches 3 as @e[tag=ancient_altar,tag=interact] at @s positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:ancient_altar/break_progress
execute if score .3 slow_tick matches 3 as @e[tag=ancient_altar,tag=interact,nbt={interaction:{}}] at @s run function ancient_artifacts:ancient_altar/interact/use
execute if score .3 slow_tick matches 3 as @e[tag=ancient_altar,tag=control] at @s align xyz run function ancient_artifacts:ancient_altar/show_item
execute as @e[type=marker,tag=ancient_altar,tag=control,scores={animation=1..}] at @s run function ancient_artifacts:ancient_altar/artifracture/animation