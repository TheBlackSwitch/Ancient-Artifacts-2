#-----FUNCTION----------
#    EASE IN:  x = t^2
#-----------------------

scoreboard players operation .x temp = .t temp
scoreboard players operation .x temp *= .t temp
return run scoreboard players operation .x temp /= .1000 temp
