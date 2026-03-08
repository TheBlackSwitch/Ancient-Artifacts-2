scoreboard players add @s animation 1

##Particle and sound effects
execute if score @s animation matches 1 run playsound minecraft:block.respawn_anchor.ambient hostile @a[distance=..96] ~ ~ ~ 5 1
execute if score @s animation matches 1 run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 2 500 force

execute if score @s animation matches 20 run playsound minecraft:block.respawn_anchor.ambient hostile @a[distance=..96] ~ ~ ~ 5 1
execute if score @s animation matches 20 run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 2 500 force

execute if score @s animation matches 73 as @a[distance=..96] at @s run playsound ancient_artifacts:ambient.hum hostile @s ~ ~ ~ 0.5 1
execute if score @s animation matches 73 run summon item_display ~ ~ ~ {Tags:["shulker_king_animation","ring_large"]}
execute if score @s animation matches 73 if entity @s[tag=difficulty_1] run summon item_display ~ ~ ~ {Tags:["shulker_king_animation","ring_small","common"]}
execute if score @s animation matches 73 if entity @s[tag=difficulty_2] run summon item_display ~ ~ ~ {Tags:["shulker_king_animation","ring_small","uncommon"]}
execute if score @s animation matches 73 if entity @s[tag=difficulty_3] run summon item_display ~ ~ ~ {Tags:["shulker_king_animation","ring_small","rare"]}
execute if score @s animation matches 73 if entity @s[tag=difficulty_4] run summon item_display ~ ~ ~ {Tags:["shulker_king_animation","ring_small","unique"]}
execute if score @s animation matches 73 if entity @s[tag=difficulty_5] run summon item_display ~ ~ ~ {Tags:["shulker_king_animation","ring_small","unique"]}

execute if score @s animation matches 425 run playsound entity.warden.sonic_charge hostile @a[distance=..96] ~ ~ ~ 1 0.8

execute if score @s animation matches 460 rotated 0 90 run function ancient_artifacts:shulker_castle/intro/particles/lazer
execute if score @s animation matches 460 rotated 0 -90 run function ancient_artifacts:shulker_castle/intro/particles/lazer

execute if score @s animation matches 460 run function ancient_artifacts:shulker_castle/bossfight/init
execute if score @s animation matches 461 run fill ~-1 ~ ~-1 ~1 ~1 ~1 air

execute if score @s animation matches 460 run playsound block.respawn_anchor.deplete player @a[distance=..96] ~ ~ ~ 1 2
execute if score @s animation matches 460 run playsound ancient_artifacts:entity.artifact_golem.lazer.start master @a ~ ~ ~ 1 1.4

##Dialog
execute if score @s animation matches 80 run tellraw @a[distance=..64] [{"text":"[Shulker King]: ","color":"gold"},{"text":"You really thought my loyal shulkers would kick me, their mighty king, out of their city?","color":"light_purple"}]
execute if score @s animation matches 160 run tellraw @a[distance=..64] [{"text":"[Shulker King]: ","color":"gold"},{"text":"You stupid fool! It was all part of my plan...","color":"light_purple"}]
execute if score @s animation matches 240 run tellraw @a[distance=..64] [{"text":"[Shulker King]: ","color":"gold"},{"text":"The artifact was the last ingredient needed to make me the strongest creature in the world!","color":"light_purple"}]
execute if score @s animation matches 320 run tellraw @a[distance=..64] [{"text":"[Shulker King]: ","color":"gold"},{"text":"And now I will END (badum tss) it all!","color":"light_purple"}]
execute if score @s animation matches 400 run tellraw @a[distance=..64] [{"text":"[Shulker King]: ","color":"gold"},{"text":"Let's test my new power by end-ing you!","color":"light_purple"}]
execute if score @s animation matches 400 run scoreboard players set @s tp_cooldown 120
execute if score @s animation matches 460 run scoreboard players set @s animation -100