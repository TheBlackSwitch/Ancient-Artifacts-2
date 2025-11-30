
#--------------------REQUIREMENTS-------------------------
# 1. Set the score: .a math to the sqrt input value
# 2. Set the score: .precision math to a value from 1 to infinity
# 3. Returns the result multiplied by 1000 
#    and sets the score .result math
#---------------------------------------------------------

#-----------------------EXAMPLE---------------------------
# scoreboard players set .a math 25
# function theblackswitch:math/sqrt ==> returns: 5000
#---------------------------------------------------------


# Newtonian formulla: sqrt(a): x = (x + a / x) / 2 repeat .precision math times

# Start with a value of a/2
scoreboard players set .2 temp 2
scoreboard players operation .curr_approx math = .a math
scoreboard players operation .curr_approx math /= .2 temp

scoreboard players operation .loop temp = .precision math

## start loop 
execute if score .loop temp matches 1.. run function theblackswitch:math/internal/sqrt/loop

return run scoreboard players get .result math
