execute as @a[scores={combo.bowtime=1..}] run scoreboard players remove @s combo.bowtime 1
execute as @a[scores={combo.slam=1..}] run scoreboard players remove @s combo.slam 1
execute as @a[scores={combo.parry=1..}] run scoreboard players remove @s combo.parry 1
execute as @a unless score @s combo.slam matches 1.. run scoreboard players set @s combo.slam 0
execute as @a[scores={dash_power=1..}] at @s rotated ~ 0 run function ancient_artifacts:artifacts/nether/combo_boots/dash
execute as @a[scores={aa.combo_boots.dash_cd=1..}] run scoreboard players remove @s aa.combo_boots.dash_cd 1
