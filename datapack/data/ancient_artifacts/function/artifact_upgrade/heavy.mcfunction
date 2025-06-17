playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.8 1.4
playsound minecraft:block.netherite_block.break master @a ~ ~ ~ 5 1
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 0.2 2
playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.8 1.4

##Set level to max and set custom model data according to the level, other fields are not changed, just copied
execute store result storage ancient_artifacts:artifact max int 1 run scoreboard players get .max temp
execute store result storage ancient_artifacts:artifact level int 1 run scoreboard players get .level temp
execute store result storage ancient_artifacts:artifact start int 1 run scoreboard players get .start temp
execute store result storage ancient_artifacts:artifact rarity int 1 run scoreboard players get .rarity temp
scoreboard players add .start temp 4559999
scoreboard players operation .start temp += .level temp
execute store result storage ancient_artifacts:artifact cmd int 1 run scoreboard players get .start temp

##Replace the artifact with the new data
function ancient_artifacts:artifact_upgrade/upgrade_level with storage ancient_artifacts:artifact


##particle effects
execute if score .rarity temp matches 1 run particle dust{color:[0.239, 0.239, 0.239],scale:3} ~ ~0.75 ~ 0.2 0.3 0.2 0 20 force
execute if score .rarity temp matches 2 run particle dust{color:[0.316, 0.345, 0.859],scale:3} ~ ~0.75 ~ 0.2 0.3 0.2 0 20 force
execute if score .rarity temp matches 3 run particle dust{color:[0.875, 0.463, 1.0],scale:3} ~ ~0.75 ~ 0.2 0.3 0.2 0 20 force
execute if score .rarity temp matches 5 run particle dust{color:[0.875, 0.6, 0.157],scale:3} ~ ~0.75 ~ 0.2 0.3 0.2 0 20 force
particle firework ~ ~0.75 ~ 0.2 0.6 0.2 0.3 150 force