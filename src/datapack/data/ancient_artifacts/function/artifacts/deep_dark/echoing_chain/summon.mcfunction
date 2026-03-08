execute unless score @s tbs.ID matches 0.. run scoreboard players set @s tbs.ID -1
summon item_display ~ ~ ~ {Rotation:[0F,-90F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.001f]},interpolation_duration:20,Tags:[echo, INIT, smithed.entity, smithed.strict],item:{id:"minecraft:gunpowder",count:1,components:{"minecraft:item_model":"ancient_artifacts:misc/echo"}},brightness:{block:15,sky:15}}
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 1.5
scoreboard players operation @e[tag=echo,tag=INIT] tbs.ID = @s tbs.ID
scoreboard players add @s mobs_echoed 1
tag @e[tag=echo] remove INIT