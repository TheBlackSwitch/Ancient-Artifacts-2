execute if score @s storing_circlet_particles matches 1 at @s run playsound minecraft:block.end_portal_frame.fill ui @a ~ ~ ~ 1 1.3
execute if score @s storing_circlet_particles matches 0 at @s run playsound minecraft:block.end_portal_frame.fill ui @a ~ ~ ~ 1 2
execute if score @s storing_circlet_particles matches 1 run return run scoreboard players set @s storing_circlet_particles 0
execute if score @s storing_circlet_particles matches 0 run return run scoreboard players set @s storing_circlet_particles 1
