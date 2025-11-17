scoreboard players operation .search golemID = @s golemID

tp @s @e[type=minecraft:zombified_piglin,tag=artifact_golem,predicate=ancient_artifacts:match_golem_id,limit=1,distance=..150]

execute at @s[tag=body] rotated as @e[type=minecraft:zombified_piglin,tag=artifact_golem,predicate=ancient_artifacts:match_golem_id,limit=1,distance=..20] rotated ~ 0 run tp @s ^ ^1.35 ^ ~ ~
execute at @s[tag=head] rotated as @e[type=minecraft:zombified_piglin,tag=artifact_golem,predicate=ancient_artifacts:match_golem_id,limit=1,distance=..20] rotated ~ 0 run tp @s ^ ^2.35 ^ ~ ~
execute at @s[tag=leg_l] rotated as @e[type=minecraft:zombified_piglin,tag=artifact_golem,predicate=ancient_artifacts:match_golem_id,limit=1,distance=..20] rotated ~ 0 run tp @s ^0.36 ^1 ^-0.4 ~ ~
execute at @s[tag=leg_r] rotated as @e[type=minecraft:zombified_piglin,tag=artifact_golem,predicate=ancient_artifacts:match_golem_id,limit=1,distance=..20] rotated ~ 0 run tp @s ^-0.36 ^1 ^-0.4 ~ ~
execute at @s[tag=arm_l] rotated as @e[type=minecraft:zombified_piglin,tag=artifact_golem,predicate=ancient_artifacts:match_golem_id,limit=1,distance=..20] rotated ~ 0 run tp @s ^0.75 ^1.7 ^ ~ ~
execute at @s[tag=arm_r] rotated as @e[type=minecraft:zombified_piglin,tag=artifact_golem,predicate=ancient_artifacts:match_golem_id,limit=1,distance=..20] rotated ~ 0 run tp @s ^-0.75 ^1.7 ^ ~ ~

execute store result score .rotX temp run data get entity @s Rotation[0] 1000
execute store result score .rotY temp run data get entity @s Rotation[1] 1000

scoreboard players operation .rotX temp += @s xRot
scoreboard players operation .rotY temp += @s yRot

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get .rotX temp
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get .rotY temp
