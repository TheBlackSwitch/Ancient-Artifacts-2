scoreboard players set @s checked 1
execute store result score @s random run random value 1..17
execute at @s positioned ^ ^ ^5 if entity @e[tag=dungeon_marker,distance=..2] store result score @s random run random value 7..17
execute at @s positioned ^ ^ ^13 if entity @e[tag=dungeon_marker,distance=..2] store result score @s random run random value 7..17
execute at @s positioned ^8 ^ ^5 if entity @e[tag=dungeon_marker,distance=..2] store result score @s random run random value 7..17
execute at @s positioned ^8 ^ ^13 if entity @e[tag=dungeon_marker,distance=..2] store result score @s random run random value 7..17

execute if score @s random matches 1..6 if entity @e[tag=dungeon_center,distance=51..] unless score @n[tag=dungeon_center] has_hammer matches 1.. run scoreboard players set @s random 6
execute if score @s random matches 1..6 if entity @e[tag=dungeon_center,distance=51..] unless score @n[tag=dungeon_center] has_hammer matches 1.. run scoreboard players set @n[tag=dungeon_center] has_hammer 1

execute if score @s random matches 1..6 run fill ^-1 ^-1 ^-1 ^17 ^8 ^17 air replace water
execute if score @s random matches 7..17 run fill ~ ~ ~ ^7 ^7 ^7 air replace water

$execute if score @s random matches 1 run place template dungeon:room2x2a ~ ~ ~ $(rot)
$execute if score @s random matches 2 run place template dungeon:room2x2b ~ ~ ~ $(rot)
$execute if score @s random matches 3 run place template dungeon:room2x2c ~ ~ ~ $(rot)
$execute if score @s random matches 4 run place template dungeon:room2x2d ~ ~ ~ $(rot)
$execute if score @s random matches 5 run place template dungeon:room2x2e ~ ~ ~ $(rot)
$execute if score @s random matches 6 run place template dungeon:room2x2f ~ ~ ~ $(rot)

$execute if score @s random matches 7 run place template dungeon:room1x1a ~ ~ ~ $(rot)
$execute if score @s random matches 8 run place template dungeon:room1x1b ~ ~ ~ $(rot)
$execute if score @s random matches 9 run place template dungeon:room1x1c ~ ~ ~ $(rot)
$execute if score @s random matches 10 run place template dungeon:room1x1d ~ ~ ~ $(rot)
$execute if score @s random matches 11 run place template dungeon:room1x1e ~ ~ ~ $(rot)
$execute if score @s random matches 12 run place template dungeon:room1x1f ~ ~ ~ $(rot)
$execute if score @s random matches 13 run place template dungeon:room1x1g ~ ~ ~ $(rot)
$execute if score @s random matches 14 run place template dungeon:room1x1h ~ ~ ~ $(rot)
$execute if score @s random matches 15 run place template dungeon:room1x1i ~ ~ ~ $(rot)
$execute if score @s random matches 16 run place template dungeon:room1x1j ~ ~ ~ $(rot)
$execute if score @s random matches 17 run place template dungeon:room1x1k ~ ~ ~ $(rot)
kill @s