#------------FUNCTION------------
#   EASE IN OUT:  x = 3t^2 - 2t^3
#--------------------------------

## 3t^2
scoreboard players operation .x temp = .t temp
scoreboard players operation .x temp *= .t temp
scoreboard players operation .x temp *= .3 temp
scoreboard players operation .x temp /= .1000 temp

## 2t^3
scoreboard players operation .2t^3 temp = .t temp
scoreboard players operation .2t^3 temp *= .t temp
scoreboard players operation .2t^3 temp *= .t temp
scoreboard players operation .2t^3 temp *= .2 temp
scoreboard players operation .2t^3 temp /= .1000000 temp

## x = 3t^2 - 2t^3
return run scoreboard players operation .x temp -= .2t^3 temp

