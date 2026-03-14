execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute unless score #a tbs.math matches 0.. run return run function theblackswitch:v2.0/patch-1/math/sqrt/nested_return_0
execute unless score #precision tbs.math matches 1.. run return run function theblackswitch:v2.0/patch-1/math/sqrt/nested_return_1
execute if score #a tbs.math matches 0 run return 0
scoreboard players set #2 temp 2
scoreboard players operation #curr_approx tbs.math = #a tbs.math
scoreboard players operation #curr_approx tbs.math /= #2 temp
scoreboard players operation #loop temp = #precision tbs.math
execute if score #loop temp matches 1.. run function theblackswitch:v2.0/patch-1/math/sqrt/loop
schedule function theblackswitch:v2.0/patch-1/math/sqrt/clear_args 1 replace
return run scoreboard players get #result tbs.math
