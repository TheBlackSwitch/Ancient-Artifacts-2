execute unless score @s animation matches 0.. if entity @p[distance=..5] store result score @s animation run random value 10..27
execute if score @s animation matches 0.. run function ancient_artifacts:dungeon/scares/scary_explosion/animation
