function ancient_artifacts:_april_fools_/animations/tick
function ancient_artifacts:_april_fools_/cauldron/tick
execute unless score #AI_STATE tbs.server_data matches 1.. run function ancient_artifacts:_april_fools_/introduction
execute if score #AI_STATE tbs.server_data matches 1 if score #160 tbs.slow_tick matches 3 if predicate theblackswitch:v2.0/patch-2/rand/5 run function ancient_artifacts:_april_fools_/messages/neutral
execute if score #AI_STATE tbs.server_data matches 2 if score #160 tbs.slow_tick matches 3 if predicate theblackswitch:v2.0/patch-2/rand/5 run function ancient_artifacts:_april_fools_/messages/neutral
execute if score #AI_STATE tbs.server_data matches 3 if score #160 tbs.slow_tick matches 3 if predicate theblackswitch:v2.0/patch-2/rand/5 run function ancient_artifacts:_april_fools_/messages/neutral
execute if score #AI_STATE tbs.server_data matches 4 at @n[type=interaction, tag=ai] run function ancient_artifacts:_april_fools_/ending/animation
execute if score #AI_STATE tbs.server_data matches 1..2 as @a at @s run function ancient_artifacts:_april_fools_/tick/nested_execute_9
execute if score #AI_STATE tbs.server_data matches 2..3 if score #160 tbs.slow_tick matches 100 if predicate theblackswitch:v2.0/patch-2/rand/1 run tellraw @r [{text: "[Ancient Intelligence]: Roses are red violets are blue, I've just generated a picture of you: \n", color: "aqua"}, {text: "\uf600", font: "ancient_artifacts:main", color: "white"}, {text: "\n\n\n\n\n"}]
execute as @e[tag=ai_portal] at @s run function ancient_artifacts:_april_fools_/portal/tick
execute if score #5 tbs.slow_tick matches 3 as @a at @s if dimension ancient_artifacts:neural_void run function ancient_artifacts:_april_fools_/tick/nested_execute_10
execute in ancient_artifacts:neural_void positioned 228 56 570 if loaded ~ ~ ~ run place template ancient_artifacts:ai ~ ~ ~
execute as @e[type=interaction, tag=ai] at @s if data entity @s interaction run function ancient_artifacts:_april_fools_/tick/nested_execute_12
execute as @e[type=interaction, tag=ai] at @s run function ancient_artifacts:_april_fools_/tick/nested_execute_373
