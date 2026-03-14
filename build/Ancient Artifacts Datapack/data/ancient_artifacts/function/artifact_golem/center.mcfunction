rotate @s ~ 0
execute store result score @s motionX run data get entity @s Motion[0] 1000
execute store result score @s motionZ run data get entity @s Motion[2] 1000
execute if score #60 tbs.slow_tick matches 30 run function ancient_artifacts:artifact_golem/center/nested_execute_0
execute unless entity @s[tag=summoned] run function ancient_artifacts:artifact_golem/summon_animation
execute if entity @s[tag=summoned] run function ancient_artifacts:artifact_golem/center/nested_execute_1
fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace #ancient_artifacts:artifact_golem_destroy
execute if entity @s[nbt={active_effects: [{id: "minecraft:slowness"}]}] run attribute @s movement_speed base set 0
