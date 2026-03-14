execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s artifact matches 100..101 run scoreboard players set #allow_color temp 0
execute if score @s artifact matches 102 run scoreboard players set #allow_color temp 1
execute if score @s artifact matches 100 run function ancient_artifacts:artifacts/deep_dark/detecting_borla/check/scale_2
execute if score @s artifact matches 101..102 run function ancient_artifacts:artifacts/deep_dark/detecting_borla/check/scale_3
execute store result score .entity_count temp if entity @e[type=block_display, tag=glowing_ore, nbt={block_state: {Name: "minecraft:ancient_debris"}}, distance=..9]
execute if score .entity_count temp matches 5.. run advancement grant @s only ancient_artifacts:artifacts/deep_dark/detecting_expert
