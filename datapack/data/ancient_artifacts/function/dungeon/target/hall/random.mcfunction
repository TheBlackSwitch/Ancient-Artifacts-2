scoreboard players set @s checked 1
execute store result score @s random run random value 1..35
$execute positioned $(back) run fill ~ ~ ~ ^7 ^7 ^7 air replace water

$execute if score @s random matches 1..3 run place template dungeon:hall1 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 1..3 run say 1
$execute if score @s random matches 4..7 run place template dungeon:hall2 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 4..7 run say 2
$execute if score @s random matches 8..9 run place template dungeon:hall3 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 8..9 run say 3
$execute if score @s random matches 10..11 positioned $(back) run place template dungeon:hall4 ~ ~ ~ $(prev) none 1 1 strict
#execute if score @s random matches 10..11 run say 4
$execute if score @s random matches 12..13 positioned $(back) run place template dungeon:hall6 ~ ~ ~ $(prev) none 1 1 strict
#execute if score @s random matches 12..13 run say 6
$execute if score @s random matches 14..15 run place template dungeon:hall7 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 14..15 run say 7
$execute if score @s random matches 16 positioned $(back) run place template dungeon:hall8 ~ ~ ~ $(prev) none 1 1 strict
#execute if score @s random matches 16 run say 8
$execute if score @s random matches 17 run place template dungeon:hall9 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 17 run say 9
$execute if score @s random matches 18 run place template dungeon:hall10 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 18 run say 10
$execute if score @s random matches 19..20 run place template dungeon:hall11 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 19..20 run say 11
$execute if score @s random matches 21 positioned $(back) run place template dungeon:hall12 ~ ~ ~ $(prev) none 1 1 strict
#execute if score @s random matches 21 run say 12
$execute if score @s random matches 22 run place template dungeon:hall13 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 22 run say 13
$execute if score @s random matches 23..25 run place template dungeon:hall14 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 23..25 run say 14
$execute if score @s random matches 26..29 run place template dungeon:hall15 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 26..29 run say 15
$execute if score @s random matches 30..31 positioned $(back) run place template dungeon:hall16 ~ ~ ~ $(prev) none 1 1 strict
#execute if score @s random matches 30..31 run say 16
$execute if score @s random matches 32..34 positioned $(back) run place template dungeon:hall17 ~ ~ ~ $(prev) none 1 1 strict
#execute if score @s random matches 32..34 run say 17
$execute if score @s random matches 35 run place template dungeon:hall18 ~ ~ ~ $(rot) none 1 1 strict
#execute if score @s random matches 35 run say 18


