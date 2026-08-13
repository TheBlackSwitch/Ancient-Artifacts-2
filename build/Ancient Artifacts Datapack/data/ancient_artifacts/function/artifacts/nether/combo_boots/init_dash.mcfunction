scoreboard players set @s dash_power 5
playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1 0.7
scoreboard players set @s aa.combo_boots.dash_cd 100
effect give @s slowness 5 0 false
tag @s remove was_sprinting_last_tick
