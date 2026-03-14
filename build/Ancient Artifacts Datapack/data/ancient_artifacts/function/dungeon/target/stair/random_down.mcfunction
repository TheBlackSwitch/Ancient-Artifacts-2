scoreboard players set @s checked 1
execute if score @s Y matches -50..40 store result score @s random run random value 1..4
execute unless score @s Y matches -50..40 store result score @s random run random value 1..2
fill ~ ~ ~ ^7 ^7 ^-7 air replace water
$execute if score @s random matches 1 run place template dungeon:hall4 ~ ~ ~ $(rot)
$execute if score @s random matches 2 run place template dungeon:hall11 ~ ~ ~ $(rot)
$execute if score @s random matches 3..4 run place template dungeon:hall5 ~ ~ ~ $(rot)
