schedule function theblackswitch:tick 1t replace

function theblackswitch:player_id/tick
function theblackswitch:slow_tick/tick
function theblackswitch:overlay/internal/tick
function theblackswitch:easing/internal/tick

## Kill dropped items with tbs.clear_when_dropped true
execute as @e[type=item] if items entity @s container.0 *[custom_data~{"tbs.clear_when_dropped":true}] run kill @s