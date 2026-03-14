execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
tag @s add thermal_tiara
execute if score @s artifact matches 47 unless score @s fire matches 1.. run effect give @s fire_resistance 15 0 false
execute if score @s artifact matches 48 unless score @s fire matches 1.. run effect give @s fire_resistance 30 0 false
execute if score @s artifact matches 49 unless score @s fire matches 1.. run effect give @s fire_resistance 60 0 false
execute if score @s artifact matches 50 unless score @s fire matches 1.. run effect give @s fire_resistance 90 0 false
execute if score @s artifact matches 51 unless score @s fire matches 1.. run effect give @s fire_resistance 120 0 false
execute if score @s fire matches 1.. run scoreboard players add @s thermal_tiara_on_fire 1
execute if score @s thermal_tiara_on_fire matches 3600.. run advancement grant @s only ancient_artifacts:artifacts/nether/thermal_expert
