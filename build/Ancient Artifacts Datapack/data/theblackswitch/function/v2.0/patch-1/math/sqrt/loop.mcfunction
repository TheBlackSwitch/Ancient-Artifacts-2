execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
scoreboard players operation #result tbs.math = #a tbs.math
scoreboard players operation #result tbs.math /= #curr_approx tbs.math
scoreboard players operation #result tbs.math += #curr_approx tbs.math
scoreboard players operation #result tbs.math /= #2 temp
scoreboard players operation #curr_approx tbs.math = #result tbs.math
scoreboard players remove #loop temp 1
execute if score #loop temp matches 1.. run function theblackswitch:v2.0/patch-1/math/sqrt/loop
