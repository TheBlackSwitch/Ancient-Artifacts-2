scoreboard players set @s checked 1
#$data modify storage ancient_artifacts:test rot set value $(rot)
execute store result score @s random run random value 1..10

fill ~ ~ ~ ^7 ^7 ^1 air replace water


$execute if score @s random matches 1 run place template dungeon:wall1 ~ ~ ~ $(rot)
#execute if score @s random matches 1 run say 1
$execute if score @s random matches 2 run place template dungeon:wall2 ~ ~ ~ $(rot)
#execute if score @s random matches 2 run say 2
$execute if score @s random matches 3 run place template dungeon:wall3 ~ ~ ~ $(rot)
#execute if score @s random matches 3 run say 3
$execute if score @s random matches 4 run place template dungeon:wall4 ~ ~ ~ $(rot)
#execute if score @s random matches 4 run say 4
$execute if score @s random matches 5 run place template dungeon:wall5 ~ ~ ~ $(rot)
#execute if score @s random matches 5 run say 5
$execute if score @s random matches 6 run place template dungeon:wall6 ~ ~ ~ $(rot)
#execute if score @s random matches 6 run say 6
$execute if score @s random matches 7 run place template dungeon:wall7 ~ ~ ~ $(rot)
#execute if score @s random matches 7 run say 7
$execute if score @s random matches 8 run place template dungeon:wall8 ~ ~ ~ $(rot)
#execute if score @s random matches 8 run say 8
$execute if score @s random matches 9 run place template dungeon:wall9 ~ ~ ~ $(rot)
#execute if score @s random matches 9 run say 9
$execute if score @s random matches 10 run place template dungeon:wall10 ~ ~ ~ $(rot)
#execute if score @s random matches 10 run say 10
kill @s
