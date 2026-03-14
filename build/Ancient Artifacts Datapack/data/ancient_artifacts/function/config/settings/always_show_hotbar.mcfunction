execute if score @s always_show_hotbar matches 1 at @s run playsound minecraft:block.end_portal_frame.fill ui @a ~ ~ ~ 1 1.3
execute if score @s always_show_hotbar matches 0 at @s run playsound minecraft:block.end_portal_frame.fill ui @a ~ ~ ~ 1 2
execute if score @s always_show_hotbar matches 0 run function ancient_artifacts:artifact_hotbar/show
execute if score @s always_show_hotbar matches 1 run title @s actionbar {text: ""}
execute if score @s always_show_hotbar matches 0 run return run scoreboard players set @s always_show_hotbar 1
execute if score @s always_show_hotbar matches 1 run return run scoreboard players set @s always_show_hotbar 0
