execute if score #3 tbs.slow_tick matches 3 if score @s current_recipe matches 21..22 run function ancient_artifacts:artifact_cauldron/tooltip/question_mark
execute unless score @s current_recipe matches 21 if score #10 tbs.slow_tick matches 10 run function ancient_artifacts:artifact_cauldron/tooltip/edit
