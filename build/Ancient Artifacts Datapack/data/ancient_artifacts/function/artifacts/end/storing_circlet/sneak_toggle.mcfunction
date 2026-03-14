execute if score @s extra_inv_open matches 0 run function ancient_artifacts:artifacts/end/storing_circlet/switch_new_inv
execute if score @s extra_inv_open matches 0 run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 0.25 1.5
execute if score @s extra_inv_open matches 0 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.25 2
execute if score @s extra_inv_open matches 0 if score @s storing_circlet_particles matches 1 run particle minecraft:dust{color: [0.8d, 0.3d, 1.0d], scale: 1} ^ ^0.5 ^0.2 0.3 0.5 0.3 1 100
execute if score @s extra_inv_open matches 0 run return run scoreboard players set @s extra_inv_open 1
execute if score @s extra_inv_open matches 1 run function ancient_artifacts:artifacts/end/storing_circlet/close_inv
