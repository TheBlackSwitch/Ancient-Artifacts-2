execute if score .20 slow_tick = .20 random_delay as @e[tag=mobspawn] at @s run function ancient_artifacts:mobspawn/select_mob/random_tick
execute if score .20 slow_tick = .20 random_delay as @a at @s run function ancient_artifacts:mobspawn/select_mob/random_tick
execute if score .3 slow_tick matches 3 as @e[tag=buffed] run function ancient_artifacts:mobspawn/buffed_mob