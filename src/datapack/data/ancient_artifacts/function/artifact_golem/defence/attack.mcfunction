
execute as @e[type=interaction,tag=artifact_golem,distance=..10] at @s:
    execute unless data entity @s attack run return fail

    # Particle, damage, sound and break tool on attack
    playsound entity.player.attack.weak player @a ~ ~ ~ 1 1

    execute on attacker:
        execute at @s run particle minecraft:damage_indicator ^ ^1 ^2 0.1 0.1 0.1 0 1
        damage @s 2 ancient_artifacts:artifact_golem_thorns by @e[type=zombified_piglin,tag=artifact_golem,tag=center,limit=1,distance=..20,sort=nearest]
        execute if predicate ancient_artifacts:holding_tool run function ancient_artifacts:artifact_golem/defence/damage_tool

    data remove entity @s attack
