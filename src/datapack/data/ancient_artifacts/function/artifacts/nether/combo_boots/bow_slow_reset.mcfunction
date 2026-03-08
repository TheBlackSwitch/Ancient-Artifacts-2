function ancient_artifacts:utilities/tick_speed/set {rate:20}
effect clear @a[tag=slow_bow] slow_falling
effect clear @a[tag=slow_bow] hunger
scoreboard players set .timewarp server 0
tag @e remove slow_bow