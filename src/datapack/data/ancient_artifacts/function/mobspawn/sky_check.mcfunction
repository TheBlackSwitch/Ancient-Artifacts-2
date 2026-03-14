scoreboard players set .5 temp 0
summon marker ~ ~ ~ {Tags:[sky_check]}
execute as @e[tag=sky_check,limit=1] at @s positioned over motion_blocking if entity @s[distance=..0.5] run scoreboard players set .5 temp 1
kill @e[tag=sky_check]