##ATTENTION, THIS FILE CAN RUN MULTIPLE TIMES!!

##Reset Versions:
data remove storage theblackswitch:versions lib
data remove storage theblackswitch:versions packs

##Init tick function
schedule function theblackswitch:tick 1t replace
schedule function theblackswitch:version_control/init 1t replace

##Inits
function theblackswitch:player_id/init
function theblackswitch:slow_tick/init
function theblackswitch:easing/internal/load

##scoreboards
scoreboard objectives add temp dummy
scoreboard objectives add tbs.server_data dummy

team add no_collide
team modify no_collide collisionRule never