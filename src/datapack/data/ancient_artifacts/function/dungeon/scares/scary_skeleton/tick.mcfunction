
# Start with a random delay
execute unless score @s animation matches 0.. if entity @p[distance=..5] store result score @s animation run random value 7..12

# Run the animation
execute if score @s animation matches 0.. run function ancient_artifacts:dungeon/scares/scary_skeleton/animation