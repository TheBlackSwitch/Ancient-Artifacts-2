execute unless entity @s[tag=!small] unless score @s animation matches -1.. if entity @p[distance=..5] store result score @s animation run random value 12..17
execute unless entity @s[tag=small] unless score @s animation matches -1.. if entity @p[distance=..3] store result score @s animation run random value 12..17
execute if score @s animation matches 12 run summon lightning_bolt ~ ~-4 ~
execute if score @s animation matches 12 run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 1 0
execute if score @s animation matches 12 run particle minecraft:dust{color:[0.2, 0.2, 0.2], scale: 2} ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute if score @s animation matches 0..12 run data modify storage ancient_artifacts:tomb UUID1 set from entity @s UUID[0]
execute if score @s animation matches 0..12 run data modify storage ancient_artifacts:tomb UUID2 set from entity @s UUID[1]
execute if score @s animation matches 0..12 run data modify storage ancient_artifacts:tomb UUID3 set from entity @s UUID[2]
execute if score @s animation matches 0..12 run data modify storage ancient_artifacts:tomb UUID4 set from entity @s UUID[3]
execute if score @s animation matches 0..12 store result storage ancient_artifacts:tomb animation int 1 run scoreboard players get @s animation
execute if score @s animation matches 0..12 store result storage ancient_artifacts:tomb wave int 1 run scoreboard players operation .11 const -= @s animation
scoreboard players set .11 const 11
execute if score @s animation matches 0..12 run function ancient_artifacts:dungeon/scares/zombie_tomb/check_wave with storage ancient_artifacts:tomb

execute if score @s animation matches 11..17 run scoreboard players remove @s animation 1