
#-------------------------------------------------------
## Init color
#-------------------------------------------------------

execute unless score @s R matches 0..255 run scoreboard players set @s R 63
execute unless score @s G matches 0..255 run scoreboard players set @s G 118
execute unless score @s B matches 0..255 run scoreboard players set @s B 228

function ancient_artifacts:artifact_cauldron/fluid/color


#-------------------------------------------------------
## Particles + SFX
#-------------------------------------------------------

execute if score #20 tbs.slow_tick = #20 tbs.random_delay if score @s level matches 5.. at @s run playsound minecraft:block.smoker.smoke block @a ~ ~ ~ 5 1
execute if score #5 tbs.slow_tick = #5 tbs.random_delay if score @s level matches 1.. at @s run playsound minecraft:block.bubble_column.bubble_pop block @a ~ ~ ~ 1 0.7
execute if score #5 tbs.slow_tick = #5 tbs.random_delay if score @s level matches 1.. at @s run particle bubble_pop ~ ~0.03 ~ 0.13 0 0.13 0 1 force
execute if score #10 tbs.slow_tick = #10 tbs.random_delay if score @s level matches 7.. at @s run particle minecraft:splash ~ ~0.03 ~ 0.1 0 0.1 0 3 force

#-------------------------------------------------------
## Movement
#-------------------------------------------------------

# Level cap
execute if score @s level matches 11.. run scoreboard players set @s level 10

# convert level into a target value
scoreboard players set #70 temp 70

scoreboard players operation .target temp = @s level
scoreboard players operation .target temp *= #70 temp

# the offset from the bottom of the cauldron to the bottom of the block
scoreboard players add .target temp 240

# Auto rounding for scores
scoreboard players set #1000 temp 1000

execute store result score .rounded temp run data get entity @s Pos[1]
scoreboard players operation .rounded temp *= #1000 temp
# No auto rounding
execute store result score .fraction temp run data get entity @s Pos[1] 1000
scoreboard players operation .fraction temp -= .rounded temp

# Move If the target pos is not reached
execute unless score .target temp = .fraction temp run function ancient_artifacts:artifact_cauldron/fluid/move

#-------------------------------------------------------
## Water animation + Apply Color
#-------------------------------------------------------

scoreboard players add @s animation 1
execute if score @s animation matches 31 run scoreboard players set @s animation 0
execute store result storage ancient_artifacts:fluid frame int 1 run scoreboard players get @s animation

# Finaly edit the text and color using macros for the custom font char and color
execute if score @s animation matches ..9 run function ancient_artifacts:artifact_cauldron/fluid/edit_text/single_digit with storage ancient_artifacts:fluid
execute if score @s animation matches 10.. run function ancient_artifacts:artifact_cauldron/fluid/edit_text/two_digits with storage ancient_artifacts:fluid




