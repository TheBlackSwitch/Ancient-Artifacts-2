##Enable effects if in dungeon
execute if score .20 slow_tick matches 20 as @a at @s run function ancient_artifacts:dungeon/effects/check_enable
execute if score .20 slow_tick matches 20 as @a at @s run function ancient_artifacts:dungeon/effects/ambient_loop
execute if score .10 slow_tick = .10 random_delay as @a at @s run function ancient_artifacts:dungeon/effects/ambient_additions

##Reset ambient
execute as @a[scores={effect_type=0}] run scoreboard players set @s ambient_timer 0

##Reset dungeon timers after the player leaves and rejoins
execute as @a if score @s player_left matches 1.. run scoreboard players set @s ambient_timer 0
execute as @a if score @s player_left matches 1.. run scoreboard players set @s effect_delay 0