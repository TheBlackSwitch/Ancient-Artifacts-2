execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 18.. unless score @s final_shout_cd matches 1.. if score @s health matches 1..5 run effect give @s speed 30 3 true
execute if score @s artifact matches 17.. unless score @s final_shout_cd matches 1.. if score @s health matches 1..5 positioned ~ ~ ~5 run function ancient_artifacts:artifacts/overworld/conductive_bracelet/summon_effects
execute if score @s artifact matches 17.. unless score @s final_shout_cd matches 1.. if score @s health matches 1..5 positioned ~ ~ ~-5 run function ancient_artifacts:artifacts/overworld/conductive_bracelet/summon_effects
execute if score @s artifact matches 17.. unless score @s final_shout_cd matches 1.. if score @s health matches 1..5 positioned ~5 ~ ~ run function ancient_artifacts:artifacts/overworld/conductive_bracelet/summon_effects
execute if score @s artifact matches 17.. unless score @s final_shout_cd matches 1.. if score @s health matches 1..5 positioned ~-5 ~ ~ run function ancient_artifacts:artifacts/overworld/conductive_bracelet/summon_effects
execute if score @s artifact matches 16.. unless score @s final_shout_cd matches 1.. if score @s health matches 1..5 run effect give @s absorption 30 1 false
execute if score @s artifact matches 15.. unless score @s final_shout_cd matches 1.. if score @s health matches 1..5 run function ancient_artifacts:artifacts/overworld/final_shout_crown/shout
tag @s add final_shout_crown