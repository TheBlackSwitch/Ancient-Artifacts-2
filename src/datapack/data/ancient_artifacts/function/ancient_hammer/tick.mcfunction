execute as @a[predicate=ancient_artifacts:holding_hammer] at @s positioned ^0.2 ^ ^ run function ancient_artifacts:ancient_hammer/attacks

execute as @a if score @s hammer_time = @s prev_hammer_time unless score @s prev_hammer_time matches 1.. run scoreboard players set @s hammer_time 0
execute as @a if score @s hammer_time = @s prev_hammer_time if score @s prev_hammer_time matches 1.. run scoreboard players set @s hammer_time -1
execute as @a run scoreboard players operation @s prev_hammer_time = @s hammer_time

execute if score #3 tbs.slow_tick matches 3 as @a if items entity @s weapon.mainhand echo_shard[minecraft:custom_data~{"ancient_hammer":1b}] run item modify entity @s weapon.mainhand ancient_artifacts:hammer_repair_cost
execute if score #3 tbs.slow_tick matches 3 as @a if items entity @s player.cursor echo_shard[minecraft:custom_data~{"ancient_hammer":1b}] run item modify entity @s player.cursor ancient_artifacts:hammer_repair_cost