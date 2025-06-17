
##run cooldown timer if health is 3 hearths or above
execute as @a[scores={final_shout_cd=1..,health=6..}] run scoreboard players remove @s final_shout_cd 1
##death
execute as @a[scores={death=1..}] run tag @s remove shouting

##While Shouting
execute as @a[tag=shouting] at @s run function ancient_artifacts:artifacts/overworld/final_shout_crown/shouting

##Shout stop
execute as @a[scores={final_shout_max=..8},tag=shouting] run scoreboard players add @s final_shout_max 1
execute as @a[scores={final_shout_max=8..},tag=shouting] run function ancient_artifacts:artifacts/overworld/final_shout_crown/reset

##Shout land
execute as @a[tag=shout_land] at @s run function ancient_artifacts:artifacts/overworld/final_shout_crown/land