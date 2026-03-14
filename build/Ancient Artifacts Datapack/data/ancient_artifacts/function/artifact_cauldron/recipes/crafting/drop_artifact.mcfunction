tag @e[type=item, distance=..1] add not_crafted
$loot spawn ~0.5 ~0.5 ~0.5 loot $(artifact)
execute as @e[type=item, dy=0, tag=!not_crafted] run data merge entity @s {Tags: ["crafted"], NoGravity: 1b, PickupDelay: 60}
execute as @e[type=item, dy=0, tag=crafted] run data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
execute store result storage ancient_artifacts:item rand_motion double 0.001 run random value 20..65
execute as @e[type=item, dy=0, tag=crafted] run function ancient_artifacts:artifact_cauldron/recipes/recycling/edit_motion with storage ancient_artifacts:item
