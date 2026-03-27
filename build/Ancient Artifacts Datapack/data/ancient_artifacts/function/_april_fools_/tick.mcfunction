function ancient_artifacts:_april_fools_/animations/tick
function ancient_artifacts:_april_fools_/cauldron/tick
execute unless score #AI_STATE tbs.server_data matches 1.. run function ancient_artifacts:_april_fools_/introduction
execute if score #AI_STATE tbs.server_data matches 1 if score #160 tbs.slow_tick matches 3 if predicate theblackswitch:v2.0/patch-1/rand/5 run function ancient_artifacts:_april_fools_/messages/neutral
execute if score #AI_STATE tbs.server_data matches 2 if score #160 tbs.slow_tick matches 3 if predicate theblackswitch:v2.0/patch-1/rand/5 run function ancient_artifacts:_april_fools_/messages/neutral
execute if score #AI_STATE tbs.server_data matches 3 if score #160 tbs.slow_tick matches 3 if predicate theblackswitch:v2.0/patch-1/rand/5 run function ancient_artifacts:_april_fools_/messages/neutral
execute as @a at @s run function ancient_artifacts:_april_fools_/tick/nested_execute_9
execute if score #AI_STATE tbs.server_data matches 2..3 if score #160 tbs.slow_tick matches 100 if predicate theblackswitch:v2.0/patch-1/rand/1 run tellraw @r [{text: "[Ancient Intelligence]: Roses are red violets are blue, I've just generated a picture of you: \n", color: "aqua"}, {text: "\uf600", font: "ancient_artifacts:main", color: "white"}, {text: "\n\n\n\n\n"}]
execute as @e[tag=ai_portal] at @s run function ancient_artifacts:_april_fools_/portal/tick
