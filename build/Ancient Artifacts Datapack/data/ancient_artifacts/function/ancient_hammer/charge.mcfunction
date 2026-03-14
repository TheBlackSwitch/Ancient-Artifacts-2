effect clear @s slowness
playsound minecraft:entity.warden.sonic_boom player @a
particle minecraft:block{block_state: "minecraft:dirt"} ^ ^ ^1.5 2 0 2 1 500 force
item modify entity @s weapon.mainhand {function: "set_damage", damage: -0.07d, add: true}
execute if predicate ancient_artifacts:is_item_dead run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if predicate ancient_artifacts:is_item_dead run item replace entity @s weapon.mainhand with air
execute positioned ^ ^ ^3 unless entity @e[tag=ancient_altar, tag=control, distance=..3] run effect give @s resistance 1 6 true
execute positioned ^ ^ ^3 unless entity @e[tag=ancient_altar, tag=control, distance=..3] run summon creeper ^ ^0.5 ^1 {ExplosionRadius: 2, Fuse: 0}
execute positioned ^ ^ ^3 unless entity @e[tag=ancient_altar, tag=control, distance=..3] run effect clear @s slowness
execute positioned ^ ^ ^3 unless entity @e[tag=ancient_altar, tag=control, distance=..3] rotated ~ 0 as @e[distance=..1.5] positioned ^ ^ ^-2 run damage @s 10 generic_kill by @p
execute positioned ^ ^ ^3 unless entity @e[tag=ancient_altar, tag=control, distance=..3] rotated ~ 0 run function ancient_artifacts:artifacts/overworld/conductive_bracelet/summon_effects
execute positioned ^ ^ ^3 if entity @e[tag=ancient_altar, tag=control, limit=1, sort=nearest, distance=..3] run effect give @s resistance 10 6 true
execute positioned ^ ^ ^3 if entity @e[tag=ancient_altar, tag=control, limit=1, sort=nearest, distance=..3] run function ancient_artifacts:advancements/triggers/destroy_artifact
execute positioned ^ ^ ^3 as @e[tag=ancient_altar, tag=control, limit=1, sort=nearest, distance=..3] at @s run function ancient_artifacts:ancient_altar/artifracture/init
