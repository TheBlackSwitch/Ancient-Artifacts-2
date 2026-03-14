execute as @a[scores={final_shout_cd=1.., health=6..}] run scoreboard players remove @s final_shout_cd 1
execute as @a[tag=shouting] at @s run function ancient_artifacts:artifacts/overworld/final_shout_crown/shouting
execute as @a[scores={final_shout_max=..8}, tag=shouting] run scoreboard players add @s final_shout_max 1
execute as @a[scores={final_shout_max=8..}, tag=shouting] run function ancient_artifacts:artifacts/overworld/final_shout_crown/reset
execute as @a[tag=shout_land] at @s run function ancient_artifacts:artifacts/overworld/final_shout_crown/land
