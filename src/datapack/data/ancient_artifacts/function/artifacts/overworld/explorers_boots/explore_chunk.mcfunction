# store pos in score
execute store result score @s X run data get entity @s Pos[0]
execute store result score @s Z run data get entity @s Pos[2]

# Round down to chunk coord 0 0

scoreboard players set #16 temp 16

scoreboard players operation @s X /= #16 temp
scoreboard players operation @s Z /= #16 temp
#automatic scoreboard flooring
scoreboard players operation @s X *= #16 temp
scoreboard players operation @s Z *= #16 temp

# Go to center of chunk
scoreboard players add @s X 8
scoreboard players add @s Z 8
execute store result storage ancient_artifacts:pos X int 1 run scoreboard players get @s X
execute store result storage ancient_artifacts:pos Z int 1 run scoreboard players get @s Z
function ancient_artifacts:artifacts/overworld/explorers_boots/check_explored with storage ancient_artifacts:pos