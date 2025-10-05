#-----------FUNCTION-----------
#    EASE OUT:  x = -t^2 + 2t
#------------------------------

## -t^2
scoreboard players operation .x temp = .t temp
scoreboard players operation .x temp /= .10 temp
scoreboard players operation .x temp *= .t temp

scoreboard players operation .x temp *= .-1 temp
scoreboard players operation .x temp /= .1000 temp

## 2t
scoreboard players operation .2t temp = .t temp
scoreboard players operation .2t temp *= .2 temp

## x = -t^2 + 2t
return run scoreboard players operation .x temp += .2t temp

