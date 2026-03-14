execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s artifact matches 30..32 if block ~ ~ ~ #ancient_artifacts:water run effect give @s night_vision 1 0 true
execute if score @s artifact matches 31..32 unless block ~ ~ ~ #ancient_artifacts:water run effect give @s water_breathing 30 0 true
execute if score @s artifact matches 32 if block ~ ~ ~ #ancient_artifacts:water run effect give @s dolphins_grace 1 0 true
execute if score @s artifact matches 33 unless block ~ ~ ~ #ancient_artifacts:water run effect give @s water_breathing 60 0 true
tag @s add divers_boots
