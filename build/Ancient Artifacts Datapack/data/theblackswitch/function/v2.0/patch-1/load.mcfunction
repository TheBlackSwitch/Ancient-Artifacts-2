schedule clear theblackswitch:v2.0/patch-1/tick
execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
scoreboard players set #tbs-v2.0.debug_enabled tbs.server_data 0
execute if entity @a[tag=tbs.debug] run scoreboard players set #tbs-v2.0.debug_enabled tbs.server_data 1
execute if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["", {text: "[Debug]: ", color: "yellow", bold: true}, {text: "Switch-Lib v2.0 patch-1 loaded!"}]
function theblackswitch:v2.0/patch-1/player_id/init
function theblackswitch:v2.0/patch-1/slow_tick/init
function theblackswitch:v2.0/patch-1/easing/load
scoreboard objectives add temp dummy
scoreboard objectives add tbs.server_data dummy
scoreboard objectives add tbs.math dummy
team add tbs.no_collide
team modify no_collide collisionRule never
schedule function theblackswitch:v2.0/patch-1/tick 1
