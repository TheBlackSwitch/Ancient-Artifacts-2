execute if entity @s[tag=small] unless score @s animation matches -1.. if entity @p[distance=..5] store result score @s animation run random value 12..17
execute if entity @s[tag=!small] unless score @s animation matches -1.. if entity @p[distance=..3] store result score @s animation run random value 12..17
execute if score @s animation matches 0.. run function ancient_artifacts:dungeon/scares/zombie_tomb/animation
