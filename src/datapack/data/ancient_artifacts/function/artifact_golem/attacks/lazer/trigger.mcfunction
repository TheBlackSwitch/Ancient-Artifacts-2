execute if score @s lazer_cooldown matches 1.. unless score @s lazer_animation < @s lazer_max run scoreboard players remove @s lazer_cooldown 1

execute if score #44 tbs.slow_tick matches 44 if score @s lazer_cooldown matches 0:
    scoreboard players set @s lazer_animation -18
    execute store result score @s lazer_max run random value 5..15
    scoreboard players set #44 temp 44
    scoreboard players operation @s lazer_max *= #44 temp

execute if score #44 tbs.slow_tick matches 44 unless score @s lazer_cooldown matches 1.. store result score @s lazer_cooldown run random value 1200..1800
