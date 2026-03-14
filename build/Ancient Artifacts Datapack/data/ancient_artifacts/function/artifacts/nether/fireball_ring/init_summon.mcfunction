scoreboard players operation #search tbs.ID = @s tbs.ID
execute as @e[type=#ancient_artifacts:arrows, distance=..1, nbt=!{inGround: 1b}] run function ancient_artifacts:artifacts/nether/fireball_ring/modify_arrows
