execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute store result storage theblackswitch:easing callback_id int 1 run scoreboard players get @s tbs.easing.callback_id
function theblackswitch:v2.0/patch-1/easing/run/handle_callback/nested_macro_0 with storage theblackswitch:easing
function theblackswitch:v2.0/patch-1/easing/run/handle_callback/nested_macro_1 with storage theblackswitch:easing
scoreboard players reset @s tbs.easing.callback_id
