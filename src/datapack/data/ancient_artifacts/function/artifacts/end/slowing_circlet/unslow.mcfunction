data modify entity @s NoGravity set value false
$execute store result entity @s Motion[0] double 0.00$(speed) run data get entity @s Motion[0] 1000
$execute store result entity @s Motion[1] double 0.00$(speed) run data get entity @s Motion[1] 1000
$execute store result entity @s Motion[2] double 0.00$(speed) run data get entity @s Motion[2] 1000
$execute store result entity @s acceleration_power double 0.00$(speed) run data get entity @s acceleration_power 1000
tag @s remove slowed