#-------------------------------------------------------
## UNUSED :P
#-------------------------------------------------------

# Get Normal Rotation
execute rotated as @e[tag=artifact_golem,tag=center,limit=1,sort=nearest] rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute store result score #3 temp run data get entity @s Rotation[0] 1000
execute store result score #4 temp run data get entity @s Rotation[1] 1000

# Get Rotation facing player
execute facing entity @a[gamemode=!spectator,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
execute store result score #1 temp run data get entity @s Rotation[0] 1000
execute store result score #2 temp run data get entity @s Rotation[1] 1000

# Calculate Relative Rotation
scoreboard players operation #1 temp -= #3 temp
scoreboard players operation #2 temp -= #4 temp

# apply and limit rotation
scoreboard players operation @s xRot = #1 temp
scoreboard players operation @s yRot = #2 temp
execute if score #1 temp matches 160000.. at @s run scoreboard players set @s xRot 80000
execute if score #1 temp matches ..-160000 at @s run scoreboard players set @s xRot -80000
execute if score #2 temp matches 51000.. at @s run scoreboard players set @s yRot 50000
execute if score #2 temp matches ..-31000 at @s run scoreboard players set @s yRot -30000

# Fix rotation limits
execute if score @s xRot matches 181.. run scoreboard players remove @s xRot 180
execute if score @s xRot matches ..-181 run scoreboard players add @s xRot 180