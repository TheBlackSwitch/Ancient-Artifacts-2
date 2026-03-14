tag @a remove ag_tp_target
execute at @e[tag=dungeon_center, sort=nearest, limit=1, distance=..500] as @a[distance=..500] at @s if entity @e[tag=dungeon_marker, distance=..10, tag=!weak_effects] run tag @s add ag_tp_target
execute at @r[tag=ag_tp_target] at @e[tag=dungeon_marker, distance=10..30, limit=1, sort=random] run function ancient_artifacts:artifact_golem/attacks/stomp/move_down
execute at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 5 1
execute at @s run particle dust{color: [1.0d, 0.0d, 1.0d], scale: 3} ~ ~ ~ 0.3 0.5 0.3 0 20 force
playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1
particle portal ~ ~ ~ 0.3 0.5 0.3 0 500 force
