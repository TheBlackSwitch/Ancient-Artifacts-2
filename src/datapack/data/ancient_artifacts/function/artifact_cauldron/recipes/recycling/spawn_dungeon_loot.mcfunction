
execute if entity @p[distance=..10] as @p[distance=..10] run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:cauldron/recycle/overworld
execute if entity @p[distance=..10] as @p[distance=..10] run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:cauldron/recycle/overworld
execute if entity @p[distance=..10] as @p[distance=..10] run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:cauldron/recycle/overworld

execute unless entity @p[distance=..10] run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:cauldron/recycle/overworld
execute unless entity @p[distance=..10] run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:cauldron/recycle/overworld
execute unless entity @p[distance=..10] run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:cauldron/recycle/overworld


execute as @e[type=item,dy=0,tag=!not_recycled] run data merge entity @s {Tags:["recycled"],NoGravity:1b,PickupDelay:60}
execute as @e[type=item,dy=0,tag=recycled] run data modify entity @s Motion set value [0d,0d,0d]
execute as @e[type=item,dy=0,tag=recycled] store result storage ancient_artifacts:item rand_motion double 0.001 run random value 20..65
execute as @e[type=item,dy=0,tag=recycled] run function ancient_artifacts:artifact_cauldron/recipes/recycling/edit_motion with storage ancient_artifacts:item
