playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 10 1
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 5 2
playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 0.8
playsound ancient_artifacts:entity.artifact_golem.lazer.start hostile @a ~ ~ ~ 5 1
particle minecraft:firework ~ ~1.35 ~ 0 0 0 0.3 100
particle minecraft:dust{color: [0.494d, 0.176d, 0.835d], scale: 3} ~ ~1.35 ~ 0.2 0.2 0.2 0 10
execute in overworld positioned 0.0 0.0 0.0 rotated ~ 35 run summon marker ^ ^ ^-0.5 {Tags: ["ag_lazer_knockback"]}
data modify entity @s Motion set from entity @e[type=marker, tag=ag_lazer_knockback, limit=1] Pos
