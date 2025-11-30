
# Newtonian formulla: sqrt(a): x = (x + a / x) / 2 repeat .precision math times
# X in this case is the current approximation


# a / x
scoreboard players operation .result math = .a math
scoreboard players operation .result math /= .curr_approx math

# (a/x + x) / 2
scoreboard players operation .result math += .curr_approx math
scoreboard players operation .result math /= .2 temp
scoreboard players operation .curr_approx math = .result math

scoreboard players remove .loop temp 1
execute if score .loop temp matches 1.. run function theblackswitch:math/internal/sqrt/loop



