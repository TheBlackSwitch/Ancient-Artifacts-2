execute if score @s extra_inv_open matches 0 run return fail

function ancient_artifacts:artifacts/end/storing_circlet/switch_old_inv
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 0.75
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
scoreboard players set @s extra_inv_open 0