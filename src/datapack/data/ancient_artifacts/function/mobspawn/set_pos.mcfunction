##Get random offset
execute store result score @s X run random value -1000..1000
execute store result score @s Y run random value -1000..1000
execute store result score @s Z run random value -1000..1000

##Set range
$scoreboard players set .2 temp $(range)

##Store random offset
execute store result storage ancient_artifacts:spawn X int 0.001 run scoreboard players operation @s X *= .2 temp
execute store result storage ancient_artifacts:spawn Y int 0.001 run scoreboard players operation @s Y *= .2 temp
execute store result storage ancient_artifacts:spawn Z int 0.001 run scoreboard players operation @s Z *= .2 temp

##Set Sky Check
$data modify storage ancient_artifacts:spawn sky_check set value $(sky_check)

execute store success score .3 temp run function ancient_artifacts:mobspawn/veryfy_pos with storage ancient_artifacts:spawn

scoreboard players add @s raycast_limit 1
$execute if score .3 temp matches 0 unless score @s raycast_limit matches 400.. run function ancient_artifacts:mobspawn/set_pos {range:$(range),sky_check:$(sky_check)}
