particle minecraft:splash ~0.5 ~0.5 ~0.5 0.2 0.3 0.2 0 30 normal
playsound minecraft:item.bucket.empty_lava block @a ~0.5 ~0.5 ~0.5 1 1.8
playsound minecraft:entity.generic.splash block @a ~0.5 ~0.5 ~0.5 0.5 1.2
scoreboard players set @s current_recipe 1
function ancient_artifacts:artifact_cauldron/tooltip/edit