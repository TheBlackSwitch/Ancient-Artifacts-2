#add easing
scoreboard players add @s current_ease 1

#store duration
$scoreboard players set .1 temp $(duration)

#Set b
$scoreboard players set .2 temp $(max)
scoreboard players remove .2 temp 5

# consts
scoreboard players set #2 temp 2
scoreboard players set #1000 temp 1000
scoreboard players set #-1 temp -1

#Calc a
scoreboard players operation .3 temp = .1 temp
scoreboard players operation .3 temp *= #1000 temp
scoreboard players operation .3 temp /= .2 temp
scoreboard players operation .3 temp /= #2 temp

#Calc ab
scoreboard players operation .4 temp = .3 temp
scoreboard players operation .4 temp *= .2 temp 
scoreboard players operation .4 temp /= #1000 temp

#Calc x-ab
scoreboard players operation .5 temp = @s current_ease
scoreboard players operation .5 temp -= .4 temp

#Calc |x-ab|
execute if score .5 temp matches ..-1 run scoreboard players operation .5 temp *= #-1 temp

#Calc (x-ab)^2
scoreboard players operation .6 temp = .5 temp
scoreboard players operation .6 temp *= .6 temp

#     (x-ab)^2
#Calc --------
#      |x-ab|
scoreboard players operation .7 temp = .6 temp
scoreboard players operation .7 temp /= .5 temp

#Calc f(x)
scoreboard players operation .7 temp *= #1000 temp
scoreboard players operation .7 temp /= .3 temp
execute store result entity @s teleport_duration int 1 run scoreboard players add .7 temp 5

#calc translation
$scoreboard players set .8 temp $(x)000
$scoreboard players set .9 temp $(y)000
$scoreboard players set .10 temp $(z)000
$scoreboard players set .11 temp $(yaw)000
$scoreboard players set .12 temp $(pitch)000
execute store result storage ancient_artifacts:tp X float 0.001 run scoreboard players operation .8 temp /= .1 temp
execute store result storage ancient_artifacts:tp Y float 0.001 run scoreboard players operation .9 temp /= .1 temp
execute store result storage ancient_artifacts:tp Z float 0.001 run scoreboard players operation .10 temp /= .1 temp
execute store result storage ancient_artifacts:tp YAW float 0.001 run scoreboard players operation .11 temp /= .1 temp
execute store result storage ancient_artifacts:tp PITCH float 0.001 run scoreboard players operation .12 temp /= .1 temp
execute unless score @s current_ease matches 1 run function ancient_artifacts:dungeon/cutscene/teleport with storage ancient_artifacts:tp


#reset if end
execute if score @s current_ease >= .1 temp run scoreboard players set @s current_ease 0

##Formula For Calculating teleport_duration
# b = slowest point
# 
#      duration
# a = ----------
#         2b
#
#          (x-ab)^2
#          --------
#           |x-ab|
# f(x)= ---------------
#              a