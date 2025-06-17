data modify entity @s Pos set from entity @e[tag=artifact_golem,tag=center,limit=1,sort=nearest] Pos
execute at @s[tag=body] rotated as @e[tag=artifact_golem,tag=center,limit=1,sort=nearest] rotated ~ 0 run tp @s ^ ^1.35 ^ ~ ~
execute at @s[tag=head] rotated as @e[tag=artifact_golem,tag=center,limit=1,sort=nearest] rotated ~ 0 run tp @s ^ ^2.35 ^ ~ ~
execute at @s[tag=leg_l] rotated as @e[tag=artifact_golem,tag=center,limit=1,sort=nearest] rotated ~ 0 run tp @s ^0.36 ^1 ^-0.4 ~ ~
execute at @s[tag=leg_r] rotated as @e[tag=artifact_golem,tag=center,limit=1,sort=nearest] rotated ~ 0 run tp @s ^-0.36 ^1 ^-0.4 ~ ~
execute at @s[tag=arm_l] rotated as @e[tag=artifact_golem,tag=center,limit=1,sort=nearest] rotated ~ 0 run tp @s ^0.75 ^1.7 ^ ~ ~
execute at @s[tag=arm_r] rotated as @e[tag=artifact_golem,tag=center,limit=1,sort=nearest] rotated ~ 0 run tp @s ^-0.75 ^1.7 ^ ~ ~

execute store result score .1 temp run data get entity @s Rotation[0] 1000
execute store result score .2 temp run data get entity @s Rotation[1] 1000

scoreboard players operation .1 temp += @s xRot
scoreboard players operation .2 temp += @s yRot

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get .1 temp
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get .2 temp
