scoreboard players set .found temp 0

scoreboard players set .diamond_mined temp 0
scoreboard players operation .diamond_mined temp += @s mined_dia_block

execute align xyz as @e[type=item,dy=0,tag=!checked_mine,tag=!ignore_mine_check] store result score @s age run data get entity @s Age
execute align xyz if entity @n[type=item,dy=0,scores={age=..1},tag=!checked_mine,tag=!ignore_mine_check] positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:artifacts/overworld/miners_crown/rotate
execute align xyz as @e[type=item,dy=0,tag=!checked_mine,tag=!ignore_mine_check] run tag @s add checked_mine
execute if entity @p[distance=..20.5] if score .found temp matches 0 positioned ^ ^ ^0.1 run function ancient_artifacts:artifacts/overworld/miners_crown/raycast