execute at @s unless loaded ~ ~ ~ run return fail

# Fix multiple hearts sometimes spawning due to minecraft's fucked up aah structure gen
execute unless entity @s[tag=multiple_checked] run function ancient_artifacts:sculk_heart/heart/check_multiple

# Start / run animation
execute if score @s heart_state matches 1.. run return run function ancient_artifacts:sculk_heart/heart/animation
scoreboard players set @s heart_state 1