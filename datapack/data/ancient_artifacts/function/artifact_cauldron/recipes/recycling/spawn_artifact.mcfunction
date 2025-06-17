##Insert Loot
#common
execute if data entity @s {data:{roll:"common"}} run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:artifacts/common
#uncommon
execute if data entity @s {data:{roll:"uncommon"}} run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:artifacts/uncommon
#rare
execute if data entity @s {data:{roll:"rare"}} run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:artifacts/rare
#unique
execute if data entity @s {data:{roll:"unique"}} run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:artifacts/unique_no_expensive



##Modify data
execute as @e[type=item,dy=0,tag=!not_recycled] run data merge entity @s {Tags:["recycled"],NoGravity:1b,PickupDelay:60}
execute as @e[type=item,dy=0,tag=recycled] run data modify entity @s Motion set value [0d,0d,0d]

##Add tag for particles
##Insert Loot
#common
execute if data entity @s {data:{roll:"common"}} run tag @e[type=item,dy=0,tag=recycled] add common
#uncommon
execute if data entity @s {data:{roll:"uncommon"}} run tag @e[type=item,dy=0,tag=recycled] add uncommon
#rare
execute if data entity @s {data:{roll:"rare"}} run tag @e[type=item,dy=0,tag=recycled] add rare
#unique
execute if data entity @s {data:{roll:"unique"}} run tag @e[type=item,dy=0,tag=recycled] add unique


##Random Motion
execute store result storage ancient_artifacts:item rand_motion double 0.001 run random value 20..65
execute as @e[type=item,dy=0,tag=recycled] run function ancient_artifacts:artifact_cauldron/recipes/recycling/edit_motion with storage ancient_artifacts:item