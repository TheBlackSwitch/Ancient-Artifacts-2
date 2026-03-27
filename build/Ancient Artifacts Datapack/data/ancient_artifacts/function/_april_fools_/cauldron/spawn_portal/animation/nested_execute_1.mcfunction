playsound ancient_artifacts:entity.artifact_golem.lazer.start master @a ~ ~ ~ 0.8 1.2
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.4
execute rotated 0 -90 run function ancient_artifacts:shulker_castle/intro/particles/lazer
setblock ~ ~ ~ air
execute align xyz run kill @e[tag=artifact_cauldron, dy=0]
function ancient_artifacts:_april_fools_/cauldron/spawn_portal/spawn
