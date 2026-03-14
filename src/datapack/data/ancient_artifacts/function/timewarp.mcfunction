execute if score .timewarp server matches 2 run playsound ancient_artifacts:entity.player.timewarp.start master @s ~ ~ ~ 1
execute if score .timewarp server matches 2 run scoreboard players set @s timewarp_sound_delay 30000

execute if score .timewarp server matches 1 if score @s timewarp_sound_delay matches 0 run playsound ancient_artifacts:entity.player.timewarp.loop master @s ~ ~ ~ 1
execute if score .timewarp server matches 1 if score @s timewarp_sound_delay matches 0 run scoreboard players set @s timewarp_sound_delay 13000

execute if score .timewarp server matches 0 run stopsound @s master ancient_artifacts:entity.player.timewarp.loop
execute if score .timewarp server matches 0 run playsound ancient_artifacts:entity.player.timewarp.end master @s ~ ~ ~ 1


execute if score .timewarp server matches 2 run scoreboard players set .timewarp server 1
execute if score .timewarp server matches 1 run execute store result score .1 temp run function ancient_artifacts:utilities/tick_speed/get

execute if score .timewarp server matches 1 run scoreboard players set .2 temp 1000
execute if score .timewarp server matches 1 run scoreboard players operation .2 temp /= .1 temp

execute if score .timewarp server matches 1 run scoreboard players set .3 temp 20
execute if score .timewarp server matches 1 run scoreboard players operation .2 temp *= .3 temp

execute if score .timewarp server matches 1 if score .2 temp > @s timewarp_sound_delay run scoreboard players operation .2 temp = @s timewarp_sound_delay

execute if score .timewarp server matches 0..1 if score @s timewarp_sound_delay matches 0.. run scoreboard players operation @s timewarp_sound_delay -= .2 temp
execute if score .timewarp server matches 0 run scoreboard players set .timewarp server -1
