execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
scoreboard players operation .x temp = .t temp
scoreboard players operation .x temp /= .10 temp
scoreboard players operation .x temp *= .t temp
return run scoreboard players operation .x temp /= .1000 temp
