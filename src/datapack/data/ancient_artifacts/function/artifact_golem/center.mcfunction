rotate @s ~ 0

execute store result score @s motionX run data get entity @s Motion[0] 1000
execute store result score @s motionZ run data get entity @s Motion[2] 1000

execute if score #60 tbs.slow_tick matches 30:
    data remove entity @s angry_at
    data modify entity @s angry_at set from entity @p[predicate=ancient_artifacts:survival,distance=..100] UUID

execute unless entity @s[tag=summoned] run function ancient_artifacts:artifact_golem/summon_animation
execute if entity @s[tag=summoned]:
    function ancient_artifacts:artifact_golem/attacks/control
    function ancient_artifacts:artifact_golem/walk_animation

# Rotate head to target
fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace #ancient_artifacts:artifact_golem_destroy
execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run attribute @s movement_speed base set 0