playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.9
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5
execute unless dimension ancient_artifacts:neural_void
scoreboard players set #AI_ANIMATION tbs.server_data 1000
scoreboard players set #AI_STATE tbs.server_data 4
