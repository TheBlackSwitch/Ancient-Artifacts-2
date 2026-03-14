execute unless entity @s[nbt=!{inGround: 1b}, nbt=!{DealtDamage: 1b}] run function ancient_artifacts:artifact_golem/defence/homing_projectile/nested_execute_0
execute at @s on origin facing entity @s feet positioned 0.0 0.0 0.0 run summon marker ^ ^0.1 ^1.2 {Tags: ["pos_to_motion"]}
data modify entity @s Motion set from entity @e[tag=pos_to_motion, limit=1] Pos
kill @e[tag=pos_to_motion]
