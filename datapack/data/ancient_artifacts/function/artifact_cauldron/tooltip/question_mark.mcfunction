##Question Mark Animation
execute if score .5 slow_tick matches 3.. store result score @s random run random value 1..7
execute unless score .5 slow_tick matches 3.. run scoreboard players set @s random 7
execute if score @s random matches 1 run data modify entity @s CustomName set value {"text":"\uE860","color":"white","font":"ancient_artifacts:main"}
execute if score @s random matches 2 run data modify entity @s CustomName set value {"text":"\uE861","color":"white","font":"ancient_artifacts:main"}
execute if score @s random matches 3 run data modify entity @s CustomName set value {"text":"\uE862","color":"white","font":"ancient_artifacts:main"}
execute if score @s random matches 4 run data modify entity @s CustomName set value {"text":"\uE864","color":"white","font":"ancient_artifacts:main"}
execute if score @s random matches 5..7 run data modify entity @s CustomName set value {"text":"\uE863","color":"white","font":"ancient_artifacts:main"}
function ancient_artifacts:artifact_cauldron/tooltip/edit