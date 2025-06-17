execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
##100-101 + 102

gamerule commandBlockOutput false


execute if score @s artifact matches 100 if score .10 slow_tick matches 10 run function ancient_artifacts:artifacts/deep_dark/detecting_borla/fill {scale:2,allow_color:false}
execute if score @s artifact matches 101 if score .10 slow_tick matches 10 run function ancient_artifacts:artifacts/deep_dark/detecting_borla/fill {scale:3,allow_color:false}
execute if score @s artifact matches 102 if score .10 slow_tick matches 10 run function ancient_artifacts:artifacts/deep_dark/detecting_borla/fill {scale:3,allow_color:true}

execute store result score .entity_count temp if entity @e[type=block_display,tag=glowing_ore,nbt={block_state:{Name:"minecraft:ancient_debris"}},distance=..9]
execute if score .entity_count temp matches 5.. run advancement grant @s only ancient_artifacts:artifacts/deep_dark/detecting_expert