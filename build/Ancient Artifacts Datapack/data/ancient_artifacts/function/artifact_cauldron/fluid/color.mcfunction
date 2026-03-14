scoreboard players set .color_applied temp 1
scoreboard players set #10 temp 10
scoreboard players operation .target temp = @s R
scoreboard players operation .target temp -= @s rPrev
scoreboard players operation .target temp /= #10 temp
execute store result storage ancient_artifacts:hex color.red int 1 run scoreboard players operation @s rPrev += .target temp
scoreboard players operation .target temp = @s G
scoreboard players operation .target temp -= @s gPrev
scoreboard players operation .target temp /= #10 temp
execute store result storage ancient_artifacts:hex color.green int 1 run scoreboard players operation @s gPrev += .target temp
scoreboard players operation .target temp = @s B
scoreboard players operation .target temp -= @s bPrev
scoreboard players operation .target temp /= #10 temp
execute store result storage ancient_artifacts:hex color.blue int 1 run scoreboard players operation @s bPrev += .target temp
data remove storage ancient_artifacts:fluid color
data modify storage ancient_artifacts:hex color.return set value "ancient_artifacts:fluid color"
function ancient_artifacts:utilities/rgb_to_hex with storage ancient_artifacts:hex color
