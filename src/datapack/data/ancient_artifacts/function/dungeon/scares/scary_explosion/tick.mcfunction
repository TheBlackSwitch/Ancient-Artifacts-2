
# A random start delay
execute unless score @s animation matches 0.. if entity @p[distance=..5] store result score @s animation run random value 10..27

# Run the animation
execute if score @s animation matches 0.. run function ~/../animation