particle firework ~ ~ ~ 0 0 0 0.1 1 force
particle dust{color:[1.0,0.3,0.6],scale:3} ~ ~ ~ 0.1 0.3 0.1 0 2 force
particle end_rod ~ ~ ~ 0 0.5 0 0 3 force

execute if entity @s[distance=..70] positioned ^ ^ ^0.8 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/fireball_rain/beam