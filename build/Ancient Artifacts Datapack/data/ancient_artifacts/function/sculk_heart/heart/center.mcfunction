execute at @s unless loaded ~ ~ ~ run return fail
execute unless entity @s[tag=multiple_checked] run function ancient_artifacts:sculk_heart/heart/check_multiple
execute if score @s heart_state matches 1.. run return run function ancient_artifacts:sculk_heart/heart/animation
scoreboard players set @s heart_state 1
