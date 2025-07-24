##Particle, damage and sound on attack
execute if data entity @s attack run playsound entity.player.attack.weak player @a ~ ~ ~ 1 1
execute if data entity @s attack on attacker at @s run particle minecraft:damage_indicator ^ ^1 ^2 0.1 0.1 0.1 0 1
execute if data entity @s attack on attacker run damage @s 2 ancient_artifacts:artifact_golem_thorns by @e[type=zombified_piglin,tag=artifact_golem,tag=center,limit=1,distance=..20,sort=nearest]

##break tool on attack
execute if data entity @s attack on attacker if predicate ancient_artifacts:holding_tool run function ancient_artifacts:artifact_golem/defence/damage_tool
execute if data entity @s attack run data remove entity @s attack

##homing projectiles
execute positioned ~ ~1 ~ as @e[type=#ancient_artifacts:projectile,tag=!homing,distance=..3.5,nbt=!{inGround:1b},nbt=!{DealtDamage:1b}] at @s run function ancient_artifacts:artifact_golem/defence/projectile