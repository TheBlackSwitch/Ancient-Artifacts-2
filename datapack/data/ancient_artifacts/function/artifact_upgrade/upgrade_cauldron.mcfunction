function ancient_artifacts:advancements/triggers/upgrade_cauldron

##sounds
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.8 1.4
playsound minecraft:block.netherite_block.break master @a ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.05 2
playsound minecraft:block.smithing_table.use master @a ~ ~ ~ 1 1.4


##particle effects
particle dust{color:[0.875, 0.463, 1.0],scale:3} ~ ~0.75 ~ 0.2 0.3 0.2 0 20 force


loot replace entity @s weapon.offhand loot ancient_artifacts:block/artifact_cauldron