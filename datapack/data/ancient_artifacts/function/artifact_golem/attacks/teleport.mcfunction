execute if score @s tp_cooldown matches 1.. if score @s attack_type matches 2 run scoreboard players remove @s tp_cooldown 4
execute if score @s tp_cooldown matches 1.. if score @s attack_type matches 3 run scoreboard players remove @s tp_cooldown 2
execute if score @s tp_cooldown matches 1.. if score @s attack_type matches 4 run scoreboard players remove @s tp_cooldown 1

execute if score @s tp_cooldown matches 0 run tag @a remove ag_tp_target
execute if score @s tp_cooldown matches 0 at @e[tag=dungeon_center,sort=nearest,limit=1,distance=..500] as @a[distance=..500] at @s if entity @e[tag=dungeon_marker,distance=..10,tag=!weak_effects] run tag @s add ag_tp_target
execute if score @s tp_cooldown matches 0 at @r[tag=ag_tp_target] at @e[tag=dungeon_marker,distance=10..30,limit=1,sort=random] run function ancient_artifacts:artifact_golem/attacks/move_down
execute if score @s tp_cooldown matches 0 at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 5 1
execute if score @s tp_cooldown matches 0 at @s run particle dust{color:[1.0, 0.0, 1.0],scale:3} ~ ~ ~ 0.3 0.5 0.3 0 20 force
execute if score @s tp_cooldown matches 0 run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1
execute if score @s tp_cooldown matches 0 run particle portal ~ ~ ~ 0.3 0.5 0.3 0 500 force

execute unless score @s tp_cooldown matches 1.. store result score @s tp_cooldown run random value 400..2000

