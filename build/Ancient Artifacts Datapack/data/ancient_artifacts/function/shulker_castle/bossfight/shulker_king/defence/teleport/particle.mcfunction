particle portal ~ ~ ~ 0 0 0 0.1 5 force
particle dust{color: [0.6d, 0.0d, 1.0d], scale: 3} ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute if entity @s[distance=2..70] positioned ^ ^ ^0.5 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/defence/teleport/particle
