execute unless entity @s[tag=modified] run data modify entity @s response set value 1b


##INIT
execute unless score @s animation matches 0.. run scoreboard players set @s animation 0
execute unless score @s reset_delay matches -1000.. run scoreboard players set @s reset_delay 0

##Animation
#reset
execute align xyz if score @s animation matches 0 at @e[tag=ancient_stone,tag=item,dy=0] if score .10 slow_tick matches 10 run particle trial_spawner_detection ~ ~0.3 ~ 0.3 0.3 0.3 0 1
execute if score @s animation matches 0 at @n[tag=ancient_stone,tag=control] align xyz run tp @e[tag=ancient_stone,tag=item,dy=0] ~0.5 ~0.01 ~0.5

#start
execute align xyz if score @s animation matches 1.. at @e[tag=ancient_stone,tag=item,dy=0] run particle trial_spawner_detection_ominous ~ ~0.3 ~ 0.3 0.3 0.3 0 1
execute unless score @s animation = @s prev_animation if score @s animation matches 1 run playsound block.grindstone.use block @a ~ ~ ~ 1 0.8
execute unless score @s animation = @s prev_animation align xyz if score @s animation matches 1 run tp @e[tag=ancient_stone,tag=item,dy=0] ~0.5 ~0.1 ~0.5
execute if score @s animation matches 5.. if score .20 slow_tick = .20 random_delay run playsound block.grindstone.use block @a ~ ~ ~ 1 0
execute align xyz unless score @s animation = @s prev_animation as @e[tag=ancient_stone,tag=item,dy=0] at @s run tp @s ~ ~0.02 ~

#drop
execute if score @s animation matches 30 run function ancient_artifacts:ancient_stone/drop

##Score reset
execute if score @s reset_delay matches 1.. run scoreboard players remove @s reset_delay 1
execute if score @s reset_delay matches ..-1 run scoreboard players add @s reset_delay 1
execute if score @s reset_delay matches 0 unless score @s animation matches 0 run scoreboard players set @s animation -1
execute if score @s reset_delay matches 0 unless score @s animation matches 0 run scoreboard players set @s reset_delay -20
execute if score @s animation matches -1 run scoreboard players set @s animation 0
scoreboard players operation @s prev_animation = @s animation