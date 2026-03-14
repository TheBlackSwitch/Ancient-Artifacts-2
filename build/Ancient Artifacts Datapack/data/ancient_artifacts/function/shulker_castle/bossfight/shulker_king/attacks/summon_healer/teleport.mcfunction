particle portal ~ ~ ~ 0.5 0.5 0.5 1 100 force
playsound entity.enderman.teleport hostile @a ~ ~ ~ 3 1
playsound block.respawn_anchor.charge hostile @a ~ ~ ~ 3 2
execute at @e[type=marker, tag=healer_tp_location, tag=!occupied, limit=1, sort=random] run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/summon_healer/move
execute facing entity @s eyes run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/summon_healer/summon_lazer
