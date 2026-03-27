execute if score @s animation matches 200 run function ancient_artifacts:_april_fools_/cauldron/spawn_portal/animation/nested_execute_0
execute if score @s animation matches 180..199 run particle minecraft:electric_spark ~ ~ ~ 0.35 0.35 0.35 0 5 force
execute if score @s animation matches 170 run effect give @a[distance=..7] resistance 2 9 true
execute if score @s animation matches 160 run function ancient_artifacts:_april_fools_/cauldron/spawn_portal/animation/nested_execute_1
