execute unless data entity @s attack run return fail
playsound entity.player.attack.weak player @a ~ ~ ~ 1 1
execute on attacker run function ancient_artifacts:artifact_golem/defence/attack/nested_execute_0
data remove entity @s attack
