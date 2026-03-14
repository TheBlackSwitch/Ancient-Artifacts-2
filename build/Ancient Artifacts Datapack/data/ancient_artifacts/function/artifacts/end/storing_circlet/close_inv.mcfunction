clear @s gunpowder[custom_data={storing_circlet_gui: true}]
function ancient_artifacts:artifacts/end/storing_circlet/switch_old_inv
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 0.25 0.75
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.25 2
execute if score @s storing_circlet_particles matches 1 run particle minecraft:dust{color: [0.0d, 0.3d, 0.3d], scale: 1} ^ ^0.5 ^0.2 0.3 0.5 0.3 1 100
scoreboard players set @s extra_inv_open 0
