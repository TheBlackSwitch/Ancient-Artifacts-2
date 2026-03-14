$scoreboard players set .current_idx temp $(idx)
execute if score .current_idx temp matches 600 run return run data modify entity @e[tag=ah_INIT, limit=1] CustomName set value {text: "\ue502  ", font: "ancient_artifacts:main"}
execute if score .current_idx temp matches 599 run return run data modify entity @e[tag=ah_INIT, limit=1] CustomName set value {text: "\ue600  ", font: "ancient_artifacts:main"}
$data modify entity @e[tag=ah_INIT,limit=1] CustomName set value {"text":"\uE$(idx)  ","font":"ancient_artifacts:main"}
