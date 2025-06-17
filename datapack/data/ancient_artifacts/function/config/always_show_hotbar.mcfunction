
##SFX
execute if score @s always_show_hotbar matches 1 run execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~ 1 1.0
execute if score @s always_show_hotbar matches 0 run execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~ 1 1.3

execute if score @s always_show_hotbar matches 0 run function ancient_artifacts:artifact_hotbar/show
execute if score @s always_show_hotbar matches 1 run title @s actionbar {"text":""}

##Toggle
execute if score @s always_show_hotbar matches 0 run return run scoreboard players set @s always_show_hotbar 1
execute if score @s always_show_hotbar matches 1 run return run scoreboard players set @s always_show_hotbar 0