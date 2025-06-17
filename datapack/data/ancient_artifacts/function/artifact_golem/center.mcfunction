data modify entity @s Fire set value -1s
data modify entity @s Rotation[1] set value 0f
data modify entity @s AngerTime set value 382
execute store result score @s motionX run data get entity @s Motion[0] 1000
execute store result score @s motionZ run data get entity @s Motion[2] 1000
data remove entity @s AngryAt
data modify entity @s AngryAt set from entity @a[gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] UUID
execute unless entity @s[tag=summoned] run function ancient_artifacts:artifact_golem/summon_animation
execute if entity @s[tag=summoned] run function ancient_artifacts:artifact_golem/attacks/control
execute if entity @s[tag=summoned] run function ancient_artifacts:artifact_golem/walk_animation

##Rotate head to target
fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace #ancient_artifacts:artifact_golem_destroy
execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run attribute @s movement_speed base set 0