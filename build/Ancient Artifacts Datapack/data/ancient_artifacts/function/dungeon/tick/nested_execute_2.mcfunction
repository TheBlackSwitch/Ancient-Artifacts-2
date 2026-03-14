function ancient_artifacts:dungeon/effects/check_enable
function ancient_artifacts:dungeon/effects/ambient_loop
execute if score @s effect_type matches 0 run scoreboard players set @s ambient_timer 0
execute if score @s player_left matches 1.. run function ancient_artifacts:dungeon/tick/nested_execute_1
