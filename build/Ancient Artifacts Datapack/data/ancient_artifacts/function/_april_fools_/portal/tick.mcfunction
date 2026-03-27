particle minecraft:portal ~ ~ ~ 0 0 0 0.4 20
particle minecraft:dust{color: [0.1d, 0.1d, 0.2d], scale: 4} ~ ~ ~ 0.1 0.1 0.1 0.4 5
execute if score #5 tbs.slow_tick matches 2 run particle minecraft:end_rod ~ ~ ~ 0.8 0.8 0.8 0 2 force
execute if score #20 tbs.slow_tick = #20 tbs.random_delay run playsound ancient_artifacts:block.nural_portal.ambient master @a ~ ~ ~ 0.7 1
