scoreboard players operation .1 temp = @s attack
scoreboard players operation .1 temp *= .2 temp
scoreboard players operation @s life_steal_level += .1 temp
execute if score @s life_steal_level matches 1000.. run effect give @s minecraft:regeneration 1 2
execute if score @s life_steal_level matches 1000.. run playsound minecraft:block.trial_spawner.spawn_item_begin master @s ~ ~ ~ 5 0
execute if score @s life_steal_level matches 1000.. run particle minecraft:trial_spawner_detection ~ ~ ~ 0 0 0 0.2 10 force
execute if score @s life_steal_level matches 1000.. run scoreboard players add @s health_stealed 1
execute if score @s life_steal_level matches 1000.. run scoreboard players remove @s life_steal_level 1000