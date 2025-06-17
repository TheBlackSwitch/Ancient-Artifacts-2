
##SFX
execute if score @s storing_circlet_particles matches 1 at @s run playsound block.dispenser.dispense master @s ~ ~ ~ 1 1.0
execute if score @s storing_circlet_particles matches 0 at @s run playsound block.dispenser.dispense master @s ~ ~ ~ 1 1.3

##Toggle
execute if score @s storing_circlet_particles matches 1 run return run scoreboard players set @s storing_circlet_particles 0
execute if score @s storing_circlet_particles matches 0 run return run scoreboard players set @s storing_circlet_particles 1