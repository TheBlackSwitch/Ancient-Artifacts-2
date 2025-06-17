##Get score
$scoreboard players set .current_idx temp $(idx)

##Empty [Just for Spacing]
execute if score .current_idx temp matches 600 run return run data modify entity @e[tag=ah_INIT,limit=1] CustomName set value {"text":"\uE502  "}

##Deactivated
execute if score .current_idx temp matches 599 run return run data modify entity @e[tag=ah_INIT,limit=1] CustomName set value {"text":"\uE600  "}

##Artifacts
$data modify entity @e[tag=ah_INIT,limit=1] CustomName set value {"text":"\uE$(idx)  "}
