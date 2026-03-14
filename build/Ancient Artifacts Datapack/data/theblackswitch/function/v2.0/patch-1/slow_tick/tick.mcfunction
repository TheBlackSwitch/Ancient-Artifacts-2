execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute unless score #tbs-v2.0.enabled.slow_tick tbs.server_data matches 1 run return fail
scoreboard players add #2 tbs.slow_tick 1
scoreboard players add #3 tbs.slow_tick 1
scoreboard players add #4 tbs.slow_tick 1
scoreboard players add #5 tbs.slow_tick 1
scoreboard players add #6 tbs.slow_tick 1
scoreboard players add #7 tbs.slow_tick 1
scoreboard players add #8 tbs.slow_tick 1
scoreboard players add #9 tbs.slow_tick 1
scoreboard players add #10 tbs.slow_tick 1
scoreboard players add #18 tbs.slow_tick 1
scoreboard players add #20 tbs.slow_tick 1
scoreboard players add #22 tbs.slow_tick 1
scoreboard players add #32 tbs.slow_tick 1
scoreboard players add #40 tbs.slow_tick 1
scoreboard players add #44 tbs.slow_tick 1
scoreboard players add #60 tbs.slow_tick 1
scoreboard players add #100 tbs.slow_tick 1
scoreboard players add #160 tbs.slow_tick 1
execute if score #160 tbs.slow_tick matches 161 store result score #160 tbs.random_delay run random value 1..160
execute if score #60 tbs.slow_tick matches 61 store result score #60 tbs.random_delay run random value 1..60
execute if score #20 tbs.slow_tick matches 21 store result score #20 tbs.random_delay run random value 1..20
execute if score #10 tbs.slow_tick matches 11 store result score #10 tbs.random_delay run random value 1..10
execute if score #3 tbs.slow_tick matches 4 store result score #3 tbs.random_delay run random value 1..3
execute if score #5 tbs.slow_tick matches 6 store result score #5 tbs.random_delay run random value 1..5
execute if score #2 tbs.slow_tick matches 3.. run scoreboard players set #2 tbs.slow_tick 1
execute if score #3 tbs.slow_tick matches 4.. run scoreboard players set #3 tbs.slow_tick 1
execute if score #4 tbs.slow_tick matches 5.. run scoreboard players set #4 tbs.slow_tick 1
execute if score #5 tbs.slow_tick matches 6.. run scoreboard players set #5 tbs.slow_tick 1
execute if score #6 tbs.slow_tick matches 7.. run scoreboard players set #6 tbs.slow_tick 1
execute if score #7 tbs.slow_tick matches 8.. run scoreboard players set #7 tbs.slow_tick 1
execute if score #8 tbs.slow_tick matches 9.. run scoreboard players set #8 tbs.slow_tick 1
execute if score #9 tbs.slow_tick matches 10.. run scoreboard players set #9 tbs.slow_tick 1
execute if score #10 tbs.slow_tick matches 11.. run scoreboard players set #10 tbs.slow_tick 1
execute if score #18 tbs.slow_tick matches 19.. run scoreboard players set #18 tbs.slow_tick 1
execute if score #20 tbs.slow_tick matches 21.. run scoreboard players set #20 tbs.slow_tick 1
execute if score #22 tbs.slow_tick matches 23.. run scoreboard players set #22 tbs.slow_tick 1
execute if score #32 tbs.slow_tick matches 33.. run scoreboard players set #32 tbs.slow_tick 1
execute if score #40 tbs.slow_tick matches 41.. run scoreboard players set #40 tbs.slow_tick 1
execute if score #44 tbs.slow_tick matches 45.. run scoreboard players set #44 tbs.slow_tick 1
execute if score #60 tbs.slow_tick matches 61.. run scoreboard players set #60 tbs.slow_tick 1
execute if score #100 tbs.slow_tick matches 101.. run scoreboard players set #100 tbs.slow_tick 1
execute if score #160 tbs.slow_tick matches 161.. run scoreboard players set #160 tbs.slow_tick 1
