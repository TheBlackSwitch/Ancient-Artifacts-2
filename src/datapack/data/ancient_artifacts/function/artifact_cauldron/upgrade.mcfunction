function ancient_artifacts:advancements/triggers/upgrade_cauldron

tag @e[type=villager,nbt={VillagerData:{profession:"minecraft:leatherworker"}}] remove checked

execute align xyz run kill @e[type=#ancient_artifacts:technical,dy=0] 

##When an artifact upgrade is used on a cauldron
particle minecraft:firework ~0.5 ~0.5 ~0.5 0 0 0 0.3 300
particle minecraft:dust{color:[0.82, 0.275, 1.0],scale:2} ~0.5 ~1 ~0.5 0.3 0.3 0.3 0.5 50

particle minecraft:block{block_state:cauldron} ~ ~0.5 ~0.5 0.125 0.125 0.125 0.1 10 force
particle minecraft:block{block_state:cauldron} ~1 ~0.5 ~0.5 0.125 0.125 0.125 0.1 10 force
particle minecraft:block{block_state:cauldron} ~0.5 ~0.5 ~1 0.125 0.125 0.125 0.1 10 force
particle minecraft:block{block_state:cauldron} ~0.5 ~0.5 ~ 0.125 0.125 0.125 0.1 10 force

playsound minecraft:block.smithing_table.use block @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie.attack_iron_door block @a ~ ~ ~ 1 0.7
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 1.7

function ancient_artifacts:artifact_cauldron/place