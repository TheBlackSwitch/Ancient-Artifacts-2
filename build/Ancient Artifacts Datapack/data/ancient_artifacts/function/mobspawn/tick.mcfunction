execute if score #20 tbs.slow_tick = #20 tbs.random_delay as @e[type=#ancient_artifacts:technical, tag=mobspawn] at @s run function ancient_artifacts:mobspawn/select_mob/random_tick
execute if score #20 tbs.slow_tick = #20 tbs.random_delay as @a at @s run function ancient_artifacts:mobspawn/select_mob/random_tick
execute if score #3 tbs.slow_tick matches 3 as @e[tag=buffed, type=!#ancient_artifacts:non_living] run function ancient_artifacts:mobspawn/buffed_mob
